//
//  PersonalDetailsProfileImage.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct PersonalDetailsProfileImage: View {
    var body: some View {
        Section {
            ImageTextButton(image: Images.profileImage1, title: "Profile image", bodyText: "Change your image here", buttonText: "Edit")
                .hideSeparators(insets: EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16), rowBackground: Color.listRowBackgroundColor2)
        }
    }
}

struct PersonalDetailsProfileImage_Previews: PreviewProvider {
    static var previews: some View {
        PersonalDetailsProfileImage()
    }
}
