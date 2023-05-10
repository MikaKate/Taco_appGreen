//
//  List.swift
//  esercizio
//
//  Created by Micaela on 21/04/23.
//

import Foundation

struct ListModel: Hashable {
    var title: String
    var users: [String]
    var date: String
}

extension ListModel {
    
    static let sampleData: [ListModel] =
    [
        ListModel(title: "Compleanno Anna",
                  users: ["Tizio", "Caio", "Sempronio"], date: "23 March 2021"),
        ListModel(title: "Settimana Bianca",
             users: ["Bob", "John"], date: "7 January 2023"
            ),
        ListModel(title: "Spesa coinquiline",
             users: ["Peach", "Mario", "Luigi", "Hola"], date: "14 May 2022"
             ),
    ]
}
