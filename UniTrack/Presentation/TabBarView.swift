//
//  TabBarView.swift
//  Finance
//
//  Created by UI8 on 09/10/2020.
//

import SwiftUI

// This is tab bar. You can change what information it displays here.
struct TabBarView: View {
    var body: some View {
        TabView {
            NavigationView {
                HomeView()
            }
            .tabItem {
                Label("Home", systemImage: Icons.houseIcon)
            }
            NavigationView {
                InsightsView()
            }
            .tabItem {
                Label("Insights", systemImage: Icons.pieChartIcon)
            }
            NavigationView {
                PaymentsView()
            }
            .tabItem {
                Label("Payments", systemImage: Icons.paymentsIcon)
            }
            NavigationView {
                CardsView()
            }
            .tabItem {
                Label("Cards", systemImage: Icons.cardIcon)
            }
            NavigationView {
                SettingsView()
            }
            .tabItem {
                Label("Settings", systemImage: Icons.gearIcon)
            }
        }
        .accentColor(.init(.primaryColorButton1))
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
