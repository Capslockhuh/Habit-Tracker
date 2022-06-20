//
//  ContentView.swift
//  Habit Tracker
//
//  Created by Jan Andrzejewski on 20/06/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var currentHabits = HabitsClass()
    var body: some View {
        NavigationView {
            List {
                ForEach(currentHabits.habits, id: \.id) { habit in
                    Text(habit.name)
                }
            }
            .navigationTitle("Habit tracker")
            .toolbar {
                // for testing only - remove later
                Button {
                    let testHabit = Habit(name: "test", description: "test")
                    currentHabits.habits.append(testHabit)
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
