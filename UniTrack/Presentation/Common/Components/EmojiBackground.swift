//
//  EmojiBackground.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct EmojiBackground: View {
    var emoji: String
    var backgroundColor: Color
    var body: some View {
        //This is emoji with a background component. You can modify it here.
        Text(emoji)
            .font(.title3)
            .frame(width: 40, height: 40)
            .background(backgroundColor)
            .clipShape(Circle())
    }
}
