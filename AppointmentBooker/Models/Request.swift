//
//  Request.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-16.
//

import Foundation

// Possible values of RequestStatus
enum RequestStatus {
    case sent
    case denied
    case accepted
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
