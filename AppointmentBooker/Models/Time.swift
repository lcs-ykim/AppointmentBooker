//
//  Time.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-02.
//

import Foundation

struct Time: Identifiable {
    let id = UUID()
    let date: String
    let time: String
    let availability: Bool

    }

let timeSlots = [Time(date: "03/02",
                      time: "14:00 - 15:00",
                      availability: true),
                 Time(date: "03/03",
                      time: "14:00 - 15:00",
                      availability: true),
                 Time(date: "03/04",
                      time: "14:00 - 15:00",
                      availability: true)]
