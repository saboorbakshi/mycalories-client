//
//  PrimaryButton.swift
//  MyCalories
//
//  Created by Saboor Bakshi on 2025-10-26.
//

import SwiftUI

// Type-erased Shape wrapper
struct AnyShape: Shape {
    private let pathBuilder: @Sendable (CGRect) -> Path

    init<S: Shape>(_ shape: S) {
        self.pathBuilder = { rect in
            shape.path(in: rect)
        }
    }

    func path(in rect: CGRect) -> Path {
        pathBuilder(rect)
    }
}

struct OptionButton: View {
    let label: String
    let shape: AnyShape?
    let color: Color?
    let action: () -> Void

    init(label: String, shape: AnyShape? = nil, color: Color? = nil, action: @escaping () -> Void) {
        self.label = label
        self.shape = shape
        self.color = color
        self.action = action
    }
    
    var body: some View {
        Button(action: action) {
            HStack(spacing: Constants.Spacing.optionButton) {
                if let shape = shape {
                    ZStack {
                        shape
                            .fill(color ?? .clear)
                            .frame(width: Constants.Size.optionButtonShape,
                                   height: Constants.Size.optionButtonShape)
                    }
                    .padding(Constants.Padding.optionButtonShapeInset)
                    .background((color ?? .clear).opacity(0.1))
                    .clipShape(Circle())
                }

                Text(label)
                    .font(Font.optionButton)
                    .foregroundColor(.foreground)
            }
            .padding(Constants.Padding.optionButton)
            .frame(maxWidth: .infinity, minHeight: 70, alignment: .leading)
            .background(Color.secondaryBackground)
            .cornerRadius(Constants.Radius.full)
        }
        .buttonStyle(ScaleButtonStyle())
    }
}


#Preview {
    OptionButton(label: "Hi") {
        print("Button pressed")
    }
    
    OptionButton(label: "Male", shape: AnyShape(Male()), color: Color.blue) {
        print("Button Pressed")
    }
}
