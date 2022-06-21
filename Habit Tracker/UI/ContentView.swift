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
                    NavigationLink {
                        DetailView(currentHabits: currentHabits, name: habit.name, description: habit.description, createdDate: habit.createdDate)
                    } label: {
                        Text(habit.name)
                    }
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("Habit tracker")
            .toolbar {
                Button {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
