//
//  TimeStore.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-05.
//

import Foundation

class TimeStore: ObservableObject {
    @Published var times : [Time]
    
    init(times: [Time] = []) {
        self.times = times
    }
}

let timeStore = TimeStore(times: timeSlots)
