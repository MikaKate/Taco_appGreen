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
            NavigationView(){
                List {
                    NavigationLink("Lista 1", destination: Lista_1())
                    Text("Name")
                }
                .navigationTitle("uffa")
            }
                .tabItem {
                    Image(systemName: "checkmark")
                    Text("Lists")
                }
            Text("Second View")
                .tabItem {
                    Image(systemName: "basket")
                    Text("Products")
                }
            Text("Third View")
                .tabItem {
                    Image(systemName: "lightbulb")
                    Text("For You")
                }
            Text("Fourth View")
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

