//
//  ContentView.swift
//  esercizio
//
//  Created by Micaela on 24/03/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedOption = 0
    //variabili per la pagina "liste"

    
    var body: some View {
        TabView {
            //Pagina delle liste
            ListView(cards: ListModel.sampleData)
                .tabItem {
                    Image(systemName: "checkmark")
                    Text("Lists")
                }
            //pagina dei prodotti
            ProductView()
                .tabItem {
                    Image(systemName: "basket")
                    Text("Products")
                }
            //pagina dei per te
            ForYouView()
                .tabItem {
                    Image(systemName: "lightbulb")
                    Text("For You")
                }
            //pagina del profilo
            Lista_1()
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
