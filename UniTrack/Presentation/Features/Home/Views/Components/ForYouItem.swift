//
//  ForYouItem.swift
//  Finance
//
//  Created by UI8 on 12/10/2020.
//

import SwiftUI

struct ForYouItem: View {
    var forYouItem: ForYou
    var body: some View {
        //This is 'For you' item, you can modify the way it looks like from here if you wish.
        IconText(icon: forYouItem.icon, backgroundColor: forYouItem.iconBackground, title: forYouItem.title, bodyText: forYouItem.bodyText, doesHaveANavigationLink: forYouItem.doesHaveANavigationLink)
    }
}
