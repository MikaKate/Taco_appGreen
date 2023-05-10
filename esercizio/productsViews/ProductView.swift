//
//  ProductView.swift
//  esercizio
//
//  Created by Micaela on 28/04/23.
//

import SwiftUI

struct ProductView: View {
    @State private var selectedOption = 0
    @State private var optionsProducts = ["Low Risk", "All", "High Risk"]
    @State private var text = ""
    
    var body: some View {
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
                    NavigationLink("name-code-date", destination: ProfileView())
                    NavigationLink("name-code-date", destination: ProfileView())
                    NavigationLink("name-code-date", destination: ProfileView())
                    Text("Name")
                    NavigationLink("Text"){
                        Text("Prova")
                    }
                }
            }
        }
    }
}

struct ProductView_Previews: PreviewProvider {
    static var previews: some View {
        ProductView()
    }
}
