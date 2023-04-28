//
//  ListView.swift
//  esercizio
//
//  Created by Micaela on 28/04/23.
//

import SwiftUI

struct ListView: View {
    @State private var selectedOption = 0
    @State private var optionsList = ["Recent", "Categories"]
    let cards: [ListModel]
    
    var body: some View {
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
                CardView(card : cards)
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(cards: ListModel.sampleData)
    }
}
