//
//  LocationInformationItem.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI

struct LocationInformationItem: View {
    var locationInformationItem: LocationInformation
    var body: some View {
        //This is transaction location information item, you can modify the way it looks like from here if you wish.
        ListItemTextOnly(title: locationInformationItem.firstItem, bodyText: locationInformationItem.secondItem, bodyTextColor: Color.primary)
    }
}
