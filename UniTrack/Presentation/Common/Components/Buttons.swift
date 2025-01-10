//
//  Buttons.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

// Here you can find all the buttons used throughout the application
struct PrimaryButton: View {
    var icon: String
    var text: String
    var textColor: Color
    var backgroundColor: Color
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            HStack(spacing: 0) {
                Spacer()
                Label(text, systemImage: icon)
                    .font(.system(size: 17, weight: .semibold, design: .default))
                    .foregroundColor(textColor)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 50)
                    .background(backgroundColor)
                    .clipShape(RoundedRectangle(cornerRadius: 14))
            }
        }
        .padding(.trailing, 16)
        .padding(.bottom, 16)
    }
}

struct SecondaryButton: View {
    var text: String
    var body: some View {
        Text(text)
            .font(.footnote)
            .fontWeight(.bold)
            .textCase(.uppercase)
            .foregroundColor(Color(.systemIndigo))
            .frame(width: 65, height: 30)
            .background(Color(.systemIndigo).opacity(0.1))
            .clipShape(Capsule())
    }
}

struct TertiaryButton: View {
    var text: String
    var fontWeight: Font.Weight
    var body: some View {
        Text(text)
            .font(.body)
            .fontWeight(fontWeight)
    }
}

struct IconTextLeftButton: View {
    var text: String
    var textFont: Font
    var icon: String
    var iconSize: Font
    var body: some View {
        HStack(spacing: 6) {
            Text(text)
                .font(textFont)
                .fontWeight(.regular)
                .textCase(.none)
                .foregroundColor(Color(.systemIndigo))
            Image(systemName: icon)
                .font(iconSize)
                .foregroundColor(Color(.systemIndigo))
        }
    }
}

struct IconTextRightButton: View {
    var icon: String
    var iconSize: Font
    var text: String
    var textFont: Font
    var body: some View {
        HStack(spacing: 6) {
            Image(systemName: icon)
                .font(iconSize)
            Text(text)
                .font(textFont)
                .fontWeight(.regular)
        }
    }
}

struct IconOnlyButton: View {
    var icon: String
    var iconColor: Color
    var backgroundColor: Color
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 17, weight: .semibold, design: .default))
            .foregroundColor(iconColor)
            .frame(width: 50, height: 50)
            .background(backgroundColor)
            .clipShape(Circle())
    }
}

struct PrimaryTertiaryButtons: View {
    var icon: String
    var primaryText: String
    var tertiaryText: String
    var textColor: Color
    var backgroundColor: Color
    var fontWeight: Font.Weight
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            HStack(spacing: 0) {
                Spacer()
                VStack(spacing: 20) {
                    Button(action: {
                        // TODO: here
                    }) {
                        PrimaryButton(icon: icon, text: primaryText, textColor: textColor, backgroundColor: backgroundColor)
                    }
                    Button(action: {
                        // TODO: here
                    }) {
                        TertiaryButton(text: tertiaryText, fontWeight: fontWeight)
                    }
                }
            }
        }
    }
}

struct MainButton: View {
    var title: String
    var mainColor: Color = .init(.primaryColorButton1)
    var cornerRadius: CGFloat = 10.0
    var padding: EdgeInsets = .init(top: 12, leading: 16, bottom: 12, trailing: 16)
    var font: Font = .headline
    var fontWeight: Font.Weight = .bold
    var foregroundColor: Color = .white
    var width: CGFloat? = nil
    var height: CGFloat? = nil
    var isOutline: Bool = false
    var isLoading: Bool = false
    var isDisable: Bool = false
    var action: () -> Void
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        Button(action: {
            if !isLoading {
                action()
            }
        }) {
            ZStack {
                if isLoading {
                    // Hiển thị ProgressView nếu đang tải
                    HStack(spacing: 10) {
                        ProgressView()
                            .progressViewStyle(CircularProgressViewStyle(tint: isOutline ? mainColor : foregroundColor))
                        Text("Loading...")
                            .font(font)
                            .fontWeight(fontWeight)
                            .foregroundColor(foregroundColor)
                    }
                } else {
                    // Hiển thị văn bản nếu không đang tải
                    Text(title)
                        .font(font)
                        .fontWeight(fontWeight)
                        .foregroundColor(isOutline ? mainColor : foregroundColor)
                }
            }
            .padding(padding)
            .frame(maxWidth: width ?? .infinity, maxHeight: height)
            .background(
                isOutline ? Color.clear : mainColor
            )
            .cornerRadius(cornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(isOutline ? mainColor : Color.clear, lineWidth: 1)
            )
            .opacity(colorScheme == .dark ? 0.7 : 1.0)
        }
        .disabled(isLoading || isDisable)
    }
}
