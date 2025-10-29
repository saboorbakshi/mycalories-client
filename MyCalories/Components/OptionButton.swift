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

enum OptionIcon {
    case shape(AnyShape)
    case systemName(String)
}

struct OptionButton: View {
    let label: String
    let icon: OptionIcon?
    let color: Color?
    let action: () -> Void

    init(label: String, icon: OptionIcon? = nil, color: Color? = nil, action: @escaping () -> Void) {
        self.label = label
        self.icon = icon
        self.color = color
        self.action = action
    }

    var body: some View {
        Button(action: action) {
            HStack(spacing: 0) {
                if let icon = icon {
                    ZStack {
                        switch icon {
                        case .shape(let shape):
                            shape
                                .fill(color!)
                                .frame(width: Constants.Size.optionButtonShape,
                                       height: Constants.Size.optionButtonShape)

                        case .systemName(let systemName):
                            Image(systemName: systemName)
                                .font(.system(size: Constants.Size.optionButtonShape * 0.9, weight: .medium))
                                .foregroundColor(color!)
                        }
                    }
                    .padding(Constants.Padding.optionButtonShapeInset)
                    .background((color ?? .clear).opacity(0.1))
                    .clipShape(Circle())
                }

                Text(label)
                    .font(Font.optionButton)
                    .foregroundColor(.foregroundPrimary)
                    .padding(.horizontal, Constants.Padding.optionButton)
            }
            .padding(Constants.Padding.optionButton)
            .frame(maxWidth: .infinity, minHeight: 70, alignment: .leading)
            .background(.backgroundSecondary)
            .cornerRadius(Constants.Radius.full)
        }
        .buttonStyle(ScaleButtonStyle())
    }
}


#Preview {
    OptionButton(label: "Hi") {
        print("Button pressed")
    }
    
    OptionButton(label: "Male", icon: .shape(AnyShape(Male())), color: Color.blue) {
        print("Button Pressed")
    }
    
    OptionButton(label: "Male", icon: .systemName("hand.thumbsup.fill"), color: Color.blue) {
        print("Button Pressed")
    }
}
