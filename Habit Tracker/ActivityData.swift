//
//  ActivityData.swift
//  Habit Tracker
//
//  Created by Jan Andrzejewski on 20/06/2022.
//

import Foundation

struct Habit: Identifiable {
    var id = UUID()
    var name: String
    var description: String
}

class HabitsClass: ObservableObject {
    @Published var habits = [Habit]()
}
