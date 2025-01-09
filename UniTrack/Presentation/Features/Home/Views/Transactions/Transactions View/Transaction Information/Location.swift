//
//  Location.swift
//  Finance
//
//  Created by UI8 on 15/10/2020.
//

import SwiftUI
import MapKit

struct Location: View {
    @State var locationInformationItems = locationInformation
    @State var transactionLocation = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 37.779379, longitude: -122.418433), latitudinalMeters: 1000, longitudinalMeters: 1000)
    var body: some View {
        Section(header: DefaultListHeader(firstItem: "Location", secondItem: "")) {
            ForEach(locationInformationItems, id: \.self) { locationInformationItem in
                LocationInformationItem(locationInformationItem: locationInformationItem)
            }
            .hideSeparators(rowBackground: Color.listRowBackgroundColor2)
        }
        Section {
            Map(coordinateRegion: $transactionLocation)
                .frame(width: UIScreen.main.bounds.width-32, height: 200)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .hideSeparators(insets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0), rowBackground: Color.listRowBackgroundColor2)
        }
        Section {
            button
            .hideSeparators(insets: EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0), rowBackground: Color.listRowBackgroundColor2)
        }
    }
    var button: some View {
        Button(action: {
            //TODO here
        }) {
            HStack(spacing: 0) {
                Spacer()
                Label("Wrong location?", systemImage: Icons.locationIcon)
                    .font(.system(size: 17, weight: .semibold, design: .default))
                    .foregroundColor(Color(.systemIndigo))
                Spacer()
            }
        }
        .buttonStyle(BorderlessButtonStyle())
    }
}

struct Location_Previews: PreviewProvider {
    static var previews: some View {
        Location()
    }
}
