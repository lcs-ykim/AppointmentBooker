//
//  Request.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-16.
//

import Foundation

// Possible values of RequestStatus
enum RequestStatus: String {
    case unsent = "unsent"
    case sent = "sent"
    case denied = "denied"
    case accepted = "accepted"
}

class Request: Identifiable, ObservableObject {
    
    var id = UUID()
    var time: Time
    @Published var status: RequestStatus
    
    internal init(id: UUID = UUID(), time: Time, status: RequestStatus) {
        self.id = id
        self.time = time
        self.status = status
    }
    
}

let testRequest = [Request(time: Time(date: "03/02",
                                                 time: "14:00 - 15:00",
                                                 availability: availability.available),
                                      status: RequestStatus.unsent),
                   Request(time: Time(date: "03/03",
                                                                    time: "14:00 - 15:00",
                                                                    availability: availability.available),
                                                         status: RequestStatus.unsent),
                   Request(time: Time(date: "03/04",
                                                                    time: "14:00 - 15:00",
                                                                    availability: availability.available),
                                                         status: RequestStatus.unsent)]
