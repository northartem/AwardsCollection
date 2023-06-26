//
//  ContentView.swift
//  AwardsCollection
//
//  Created by Артём Латушкин on 26.06.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            MainView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Main")
                }
            AwardsView()
                .tabItem {
                    Image(systemName: "trophy.fill")
                    Text("Awards")
                }
            CartRacingView()
                .tabItem {
                    Image(systemName: "speedometer")
                    Text("Cart racing")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
