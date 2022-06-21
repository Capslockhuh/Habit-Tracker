//
//  ContentView.swift
//  Habit Tracker
//
//  Created by Jan Andrzejewski on 20/06/2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var currentHabits = HabitsClass()
    
    func removeItems(at offsets: IndexSet) {
        currentHabits.habits.remove(atOffsets: offsets)
    }
    
    @State private var addViewIsPresented = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(currentHabits.habits, id: \.id) { habit in
                    Text(habit.name)
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("Habit tracker")
            .toolbar {
                // for testing only - remove later
                Button {
                    //let testHabit = Habit(name: "test", description: "test")
                    //currentHabits.habits.append(testHabit)
                    addViewIsPresented = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $addViewIsPresented) {
                AddView(currentHabits: currentHabits)
            }
        }
    }
}
// TODO: fix "Argument passed to call that takes no arguments"

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
