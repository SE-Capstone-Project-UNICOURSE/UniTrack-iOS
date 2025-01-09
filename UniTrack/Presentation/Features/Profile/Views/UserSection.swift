//
//  UserSection.swift
//  Finance
//
//  Created by UI8 on 13/10/2020.
//

import SwiftUI

struct UserSection: View {
    var body: some View {
        Section {
            CurrentUser()
            .hideSeparators(insets: EdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16), rowBackground: Color.listRowBackgroundColor2)
        }
    }
}

struct UserSection_Previews: PreviewProvider {
    static var previews: some View {
        UserSection()
    }
}
