//
//  ContentView.swift
//  esercizio
//
//  Created by Micaela on 24/03/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ListView(cards: ListModel.sampleData)
                .tabItem {
                    Image(systemName: "checkmark")
                    Text("Lists")
                }
            ProductView()
                .tabItem {
                    Image(systemName: "basket")
                    Text("Products")
                }
            ForYouView()
                .tabItem {
                    Image(systemName: "lightbulb")
                    Text("For You")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("Profile")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
