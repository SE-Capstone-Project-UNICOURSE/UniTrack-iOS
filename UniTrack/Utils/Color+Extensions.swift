//
//  Color+Extensions.swift
//  UniTrack
//
//  Created by Trung Kiên Nguyễn on 10/1/25.
//

import Foundation
import SwiftUI

extension Color {
    static var mainColor1 = Color(hex: "5EDFF5")
//    static var mainBackgroundColor = Color(hex: "F3FBFF")

    static let accountIconColor = Color.blue
    static let notificationIconColor = Color.orange
    static let privacyIconColor = Color.green
    static let helpIconColor = Color.purple
    static let aboutIconColor = Color.gray
    static let closeAccountIconColor = Color.red

    init(hex: String) {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        if hexString.hasPrefix("#") {
            hexString.remove(at: hexString.startIndex)
        }

        var rgb: UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgb)

        self.init(red: Double((rgb & 0xFF0000) >> 16) / 255.0,
                  green: Double((rgb & 0x00FF00) >> 8) / 255.0,
                  blue: Double(rgb & 0x0000FF) / 255.0)
    }
}
