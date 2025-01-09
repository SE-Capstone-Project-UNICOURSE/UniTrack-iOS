//
//  GraphItem.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct GraphItem: View {
    var graphItem: ThisWeekSpending
    var body: some View {
        //This is graph item, you can modify the way it looks like from here if you wish.
        VStack(spacing: 10) {
            Color(.systemIndigo)
                .frame(width: 16, height: graphItem.chartHeight)
                .clipShape(RoundedRectangle(cornerRadius: 4))
            Text(graphItem.day)
                .font(.caption2)
                .foregroundColor(.secondary)
        }
        .frame(width: 24)
    }
}
