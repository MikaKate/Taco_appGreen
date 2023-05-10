//
//  Lista_1.swift
//  esercizio
//
//  Created by Micaela on 24/03/23.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedOption = 0
    @State private var optionsProfile = ["Settings", "Favourites", "Friends"]
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle")
                .font(.system(size: 100))
                .padding()
            Picker(selection: $selectedOption, label: Text("")) {
                ForEach(0..<3) { index in Text(optionsProfile[index]).tag(index)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding()
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
