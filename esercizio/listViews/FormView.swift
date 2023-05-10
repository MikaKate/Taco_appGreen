//
//  FormView.swift
//  esercizio
//
//  Created by Micaela on 04/05/23.
//

import SwiftUI

struct FormView: View {
    @State private var listTitle: String = ""
    @State private var member: String = ""
    //@FocusState private var currentFieldIsFocused: Bool = false
    var body: some View {
        VStack{
            Text("Create your list")
                .fontWeight(.bold)
                .font(.system(size: 25))
            Text("Title")
                .fontWeight(.medium)
                .padding(.top)
            TextField("Title", text: $listTitle)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .border(.secondary)
            Text("Members")
                .fontWeight(.medium)
                .padding(.top)
            TextField("Search", text: $member)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .border(.secondary)
            Text("Products")
                .fontWeight(.medium)
                .padding(.top)
            TextField("Search", text: $member)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .border(.secondary)
            Button("Press Me") {
                print("Button pressed!")
            }
            .padding()
            .background(Color(red:0, green:0, blue:1))
            .clipShape(Capsule())
            .padding(.top)
        }
        .padding(50)
        .frame(width:350, height:500)
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
