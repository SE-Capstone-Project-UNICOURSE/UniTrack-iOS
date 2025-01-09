//
//  ListHeader.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct DefaultListHeader: View {
    var firstItem: String
    var secondItem: String
    var body: some View {
        //This is default list header with 2 items component. You can modify it here.
        HStack(spacing: 0) {
            Text(firstItem)
            Spacer()
            Text(secondItem)
        }
    }
}
