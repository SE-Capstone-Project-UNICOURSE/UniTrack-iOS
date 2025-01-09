//
//  UserProfileImage.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

struct UserProfileImage: View {
    var body: some View {
        //This is user profile component. You can modify it here.
        ZStack {
            Image(Images.profileImage1)
                .renderingMode(.original)
                .overlay(
                    Circle()
                        .frame(width: 12, height: 12)
                        .foregroundColor(Color(.systemIndigo))
                        .overlay(Circle().stroke(lineWidth: 1))
                        .foregroundColor(Color.notificationIndicator)
                        .offset(x: 14, y: -14)
            )
        }
    }
}
