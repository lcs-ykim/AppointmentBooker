//
//  Time.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-02.
//

import Foundation

class Time: Identifiable, ObservableObject {
    
    var id = UUID()
    var date: String
    var time: String
    @Published var availability: Bool
    
    internal init(id: UUID = UUID(), date: String, time: String, availability: Bool) {
        self.id = id
        self.date = date
        self.time = time
        self.availability = availability
    }
    
}

let testData = [Time(date: "03/02",
                      time: "14:00 - 15:00",
                      availability: true),
                 Time(date: "03/03",
                      time: "14:00 - 15:00",
                      availability: true),
                 Time(date: "03/04",
                      time: "14:00 - 15:00",
                      availability: true)]
