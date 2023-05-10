//
//  DetailView.swift
//  esercizio
//
//  Created by Micaela on 04/05/23.
//

import SwiftUI

struct DetailView: View {
    let products: [DetailModel]
    
    var body: some View {
        NavigationView() {
            List(products, id: \.self) { product in
                NavigationLink(destination: ForYouView()) {
                    Text(product.name)
                }
            }
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(products: DetailModel.sampleData)
    }
}
