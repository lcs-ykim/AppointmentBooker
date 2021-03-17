//
//  Time.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-02.
//

import Foundation

// Possible values of availability
enum availability {
    case available
    case requested
    case unavailable
}

class Time: Identifiable, ObservableObject {
    
    var id = UUID()
    var date: String
    var time: String
    @Published var availability: availability
    
    internal init(id: UUID = UUID(), date: String, time: String, availability: availability) {
        self.id = id
        self.date = date
        self.time = time
        self.availability = availability
    }
    
}

let testData = [Time(date: "03/02",
                      time: "14:00 - 15:00",
                      availability: availability.available),
                 Time(date: "03/03",
                      time: "14:00 - 15:00",
                      availability: availability.available),
                 Time(date: "03/04",
                      time: "14:00 - 15:00",
                      availability: availability.available)]
