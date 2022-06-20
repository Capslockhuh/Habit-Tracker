//
//  AddView.swift
//  Habit Tracker
//
//  Created by Jan Andrzejewski on 20/06/2022.
//

import SwiftUI

struct AddView: View {
    @State private var name = ""
    @State private var description = ""
    var body: some View {
        NavigationView {
            Form {
                TextField("Name:", text: $name)
                
                TextField("Description", text: $description)
            }
            .navigationTitle("Add a new habit")
            .toolbar {
                Button("Save") {
                    let newHabit = Habit(name: name, description: description)
                    //TODO: append to a habits array
                }
            }
        }
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
