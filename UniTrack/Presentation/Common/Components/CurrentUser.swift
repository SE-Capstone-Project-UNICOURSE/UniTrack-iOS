//
//  CurrentUser.swift
//  Finance
//
//  Created by UI8 on 19/10/2020.
//

import SwiftUI

struct CurrentUser: View {
    var body: some View {
        //This is current user component. You can modify it here.
        HStack(spacing: 15) {
            Image(Images.profileImage1)
                .renderingMode(.original)
            VStack(alignment: .leading, spacing: 2) {
                Text("Mathew Smith")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(.primary)
                HStack(spacing: 4) {
                    Image(systemName: Icons.verifiedAccountIcon)
                        .font(.system(size: 12, weight: .medium, design: .default))
                        .foregroundColor(Color(.systemIndigo))
                    Text("Verified account holder")
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
            }
            Spacer()
            Button(action: {
                //TODO here
            }) {
                SecondaryButton(text: "Edit")
            }
            .buttonStyle(BorderlessButtonStyle())
        }
    }
}

struct CurrentUser_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUser()
    }
}
