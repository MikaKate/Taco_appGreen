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
    @State private var optionsList = ["Recent", "Categories"]
    let cards: [ListModel]

    //variabili per la pagina "prodotti"
    @State private var optionsProducts = ["Low Risk", "All", "High Risk"]
    @State private var text = ""
    
    var body: some View {
        TabView {
            //Pagina delle liste
            VStack{
                HStack {
                    Button(action: {
                                // Azione del bottone
                    }){
                        Image(systemName: "magnifyingglass")
                    }
                    Spacer()
                    Button(action: {
                                // Azione del bottone
                    }){
                        Image(systemName: "plus")
                    }
                }
                .padding(.horizontal, 20)
                Picker(selection: $selectedOption, label: Text("")) {
                        ForEach(0..<2) { index in Text(optionsList[index]).tag(index)
                            }
                        }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                List(cards, id: \.title) { cards in
                    prova(card : cards)
                }
            }
                .tabItem {
                    Image(systemName: "checkmark")
                    Text("Lists")
                }
            //pagina dei prodotti
            VStack {
                HStack {
                    Button(action: {
                                // Azione del bottone
                    }){
                        Image(systemName: "magnifyingglass")
                    }
                    .opacity(0)
                    Spacer()
                    Button(action: {
                                // Azione del bottone
                    }){
                        Image(systemName: "plus")
                    }
                }
                .padding(.horizontal, 20)
                Picker(selection: $selectedOption, label: Text("")) {
                            ForEach(0..<3) { index in
                                Text(optionsProducts[index]).tag(index)
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                        .padding()
                HStack{
                    TextField("Insert the product name", text: $text)
                        .padding(.horizontal, 20)
                }
                NavigationView(){
                    List {
                        NavigationLink("name-code-date", destination: Lista_1())
                        NavigationLink("name-code-date", destination: Lista_1())
                        NavigationLink("name-code-date", destination: Lista_1())
                        Text("Name")
                    }
                }
            }
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
        ContentView(cards: ListModel.sampleData)
    }
}
