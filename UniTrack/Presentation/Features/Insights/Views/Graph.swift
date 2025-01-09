//
//  Chart.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct Graph: View {
    @State var graphItems = spendingReport
    var body: some View {
        Section {
            VStack(alignment: .leading, spacing: 15) {
                HStack(alignment: .top, spacing: 0) {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("$481.65")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("Total amount spent this week")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    HStack(spacing: 2) {
                        Image(systemName: Icons.arrowUpIcon)
                            .font(.system(size: 13, weight: .medium, design: .default))
                            .foregroundColor(Color(.systemIndigo))
                        Text("12.27%")
                            .font(Font.footnote.bold())
                            .foregroundColor(Color(.systemIndigo))
                    }
                    .padding(.all, 6)
                    .background(Color(.systemIndigo).opacity(0.1))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
                }
                HStack(alignment: .top, spacing: 0) {
                    HStack(alignment: .bottom, spacing: 0) {
                        ForEach(graphItems.indices) { graphItem in
                            GraphItem(graphItem: graphItems[graphItem])
                            Spacer()
                        }
                    }
                    .offset(y: 8)
                    sideNumbers
                    Spacer()
                }
            }
            .hideSeparators(insets: EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16), rowBackground: Color.listRowBackgroundColor1)
        }
    }
    var sideNumbers: some View {
        VStack(alignment: .trailing, spacing: 51) {
            Text("$150")
                .font(.caption2)
                .foregroundColor(.secondary)
            Text("$75")
                .font(.caption2)
                .foregroundColor(.secondary)
            Text("$0")
                .font(.caption2)
                .foregroundColor(.secondary)
        }
    }
}

struct Graph_Previews: PreviewProvider {
    static var previews: some View {
        Graph()
    }
}
