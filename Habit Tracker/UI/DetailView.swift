//
//  DetailView.swift
//  Habit Tracker
//
//  Created by Jan Andrzejewski on 21/06/2022.
//

import SwiftUI

struct DetailView: View {
    @StateObject var currentHabits = HabitsClass()
    
    let name: String
    let description: String
    let createdDate: String
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Image(systemName: "character.cursor.ibeam")
                    Text("Name:")
                        .font(.headline)
                    Text(name)
                }
                HStack {
                    Image(systemName: "doc.plaintext.fill")
                    Text("Description:")
                        .font(.headline)
                    Text(description)
                }
                HStack {
                    Image(systemName: "calendar")
                    Text("Created:")
                        .font(.headline)
                    Text(createdDate)
                }
            }
            padding()
            .navigationTitle("Habit Details")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(name: "placeholder", description: "placeholder", createdDate: "5/8/2022")
    }
}
