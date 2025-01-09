//
//  MyTemplateItem.swift
//  Finance
//
//  Created by UI8 on 14/10/2020.
//

import SwiftUI

struct MyTemplateItem: View {
    var myTemplateItems: MyTemplate
    var body: some View {
        //This is my templates item, you can modify the way it looks like from here if you wish.
        IconText(icon: myTemplateItems.icon, backgroundColor: myTemplateItems.iconBackground, title: myTemplateItems.title, bodyText: myTemplateItems.description, doesHaveANavigationLink: false)
    }
}
