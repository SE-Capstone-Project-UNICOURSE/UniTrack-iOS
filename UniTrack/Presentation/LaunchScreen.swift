//
//  LaunchScreen.swift
//  Finance
//
//  Created by UI8 on 28/10/2020.
//

import SwiftUI

struct LaunchScreen: View {
    @State var showNextView = false
    var body: some View {
        //There was an issue with launch image scaling when adding it to 'info.plist' file, this a workaround that we have used instead to display the splash screen.
        //If you don't want to use the splash screen at all you can just go to 'FinanceApp.swift' file and comment out the 'LaunchScreen' and uncomment the 'ContentView'.
        ZStack {
            Color(.systemGroupedBackground).edgesIgnoringSafeArea(.all)
            Image("LaunchImage")
                .renderingMode(.original)
            if showNextView {
                ContentView()
                    .environmentObject(ViewRouter())
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                self.showNextView.toggle()
            }
        }
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
