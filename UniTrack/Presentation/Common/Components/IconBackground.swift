//
//  IconBackground.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

struct IconBackground: View {
    var icon: String
    var backgroundColor: Color
    var body: some View {
        //This is icon with a background component. You can modify it here.
        Image(systemName: icon)
            .font(.system(size: 17, weight: .medium, design: .default))
            .foregroundColor(Color.white)
            .frame(width: 40, height: 40)
            .background(backgroundColor)
            .clipShape(Circle())
    }
}
