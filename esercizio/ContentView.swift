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
    let optionsList = ["Recent", "Categories"]

    //variabili per la pagina "prodotti"
    let optionsProducts = ["Low Risk", "All", "High Risk"]
    @State private var text = ""
    
    //variabili per la pagina "per te"
    let optionsForYou = ["For You", "More"]
    
    //variabili per la pagina "Profilo"
    let optionsProfile = ["Settings", "Favourites", "Friends"]
    
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
                        ForEach(0..<optionsList.count) { index in Text(optionsList[index]).tag(index)
                            }
                        }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                NavigationView(){
                    List {
                        NavigationLink("Lista 1", destination: Lista_1())
                        Text("Name")
                    }
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
                            ForEach(0..<optionsProducts.count) { index in
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
                Spacer()
                
            }
                .tabItem {
                    Image(systemName: "basket")
                    Text("Products")
                }
            //pagina dei per te
            VStack{
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
                        ForEach(0..<optionsForYou.count) { index in Text(optionsForYou[index]).tag(index)
                            }
                        }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                HStack{
                    TextField("Insert the product name", text: $text)
                        .padding(.horizontal, 20)
                }
                Spacer()
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
                    Image(systemName: "lightbulb")
                    Text("For You")
                }
            //pagina del profilo
            VStack {
                Image(systemName: "person.circle")
                    .font(.system(size: 100))
                    .padding()
                Picker(selection: $selectedOption, label: Text("")) {
                        ForEach(0..<optionsProfile.count) { index in Text(optionsProfile[index]).tag(index)
                            }
                        }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding()
                Spacer()
            }
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

