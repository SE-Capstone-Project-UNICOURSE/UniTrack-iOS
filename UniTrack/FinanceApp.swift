//
//  FinanceApp.swift
//  Finance
//
//  Created by UI8 on 09/10/2020.
//

import SwiftUI

@main
struct FinanceApp: App {
    var body: some Scene {
        // If you don't want to use the splash screen at all you can just comment out the 'LaunchScreen()' and uncomment the 'ContentView().environmentObject(ViewRouter())'.
        WindowGroup {
//            LaunchScreen()
            ContentView()
                .environmentObject(ViewRouter())
        }
    }
}
