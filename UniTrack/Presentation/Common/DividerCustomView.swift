//
//  DividerCustomView.swift
//  UniTrack
//
//  Created by Trung Kiên Nguyễn on 10/1/25.
//

import Foundation
import SwiftUI

struct DividerCustomView: View {
    var text: String
    var fontSize: Font? = .headline
    var padding: CGFloat? = 10

    var body: some View {
        HStack {
            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color(.secondaryText1))
            Text(text)
                .fontWeight(.bold)
                .foregroundColor(Color(.secondaryText1))
                .font(fontSize)

            Rectangle()
                .frame(height: 1)
                .foregroundColor(Color(.secondaryText1))
        }
        .padding(.horizontal, padding)
    }
}

#Preview {
    DividerCustomView(text: "Or")
}
