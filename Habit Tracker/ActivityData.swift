//
//  ActivityData.swift
//  Habit Tracker
//
//  Created by Jan Andrzejewski on 20/06/2022.
//

import Foundation

struct Activity: Identifiable {
    var id: String
    var name: String
    var description: String
}

class ActivitiesClass: ObservableObject {
    @Published var activities: [Activity] = []
}
