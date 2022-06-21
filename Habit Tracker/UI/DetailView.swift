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
                    Text("Name:")
                        .font(.headline)
                    Text(name)
                }
                HStack {
                    Text("Description:")
                        .font(.headline)
                    Text(description)
                }
                HStack {
                    Text("Created:")
                        .font(.headline)
                    Text(createdDate)
                }
            }
            .navigationTitle("Habit Details")
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(name: "placeholder", description: "placeholder", createdDate: "5/8/2022")
    }
}
