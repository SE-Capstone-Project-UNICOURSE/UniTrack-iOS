//
//  SectionHeader.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

struct SectionHeader: View {
    var title: String
    var body: some View {
        //This is section header with title only component. You can modify it here.
        HStack(spacing: 0) {
            Text(title)
                .font(.title3)
                .fontWeight(.semibold)
                .textCase(.none)
                .foregroundColor(.primary)
                .padding(.bottom, 8)
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width-32)
    }
}
