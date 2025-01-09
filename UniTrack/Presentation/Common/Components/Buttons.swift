//
//  Buttons.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

//Here you can find all the buttons used throughout the application
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
                    .frame(width: UIScreen.main.bounds.width-32, height: 50)
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
                        //TODO here
                    }) {
                        PrimaryButton(icon: icon, text: primaryText, textColor: textColor, backgroundColor: backgroundColor)
                    }
                    Button(action: {
                        //TODO here
                    }) {
                        TertiaryButton(text: tertiaryText, fontWeight: fontWeight)
                    }
                }
            }
        }
    }
}


