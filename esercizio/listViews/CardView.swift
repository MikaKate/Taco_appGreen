//
//  prova.swift
//  esercizio
//
//  Created by Micaela on 24/03/23.
//

import SwiftUI

struct CardView: View {
    let card: ListModel
    var body: some View {
        VStack(alignment: .leading) {
            Text(card.title)
                .font(.headline)
            Spacer()
            HStack {
                Label("\(card.users.count)", systemImage: "person.3")
                Spacer()
                Label("\(card.date)", systemImage: "calendar")
            }
        }
        .padding()
    }
}

struct CardView_Previews: PreviewProvider {
    static var list = ListModel.sampleData[0]
    static var previews: some View {
        CardView(card : list)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
