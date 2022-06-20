//
//  ContentView.swift
//  Habit Tracker
//
//  Created by Jan Andrzejewski on 20/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                ForEach(HabitsClass.habits) { habit in
                    Text(habit.name)
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
