//
//  ListNavigationView.swift
//  esercizio
//
//  Created by Micaela on 05/05/23.
//

import SwiftUI

struct ListNavigationView: View {
    let cards: [ListModel]
    
    var body: some View {
        //Text("Hola")
        NavigationView() {
            List(cards, id: \.title) { cards in
                NavigationLink(destination: DetailView(products: DetailModel.sampleData)) {
                    CardView(card : cards)
                }
            }
        }
    }
}

struct ListNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        ListNavigationView(cards: ListModel.sampleData)
    }
}
