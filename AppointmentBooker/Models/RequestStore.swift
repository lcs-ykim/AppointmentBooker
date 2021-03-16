//
//  RequestStore.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-16.
//

import Foundation

class RequestStore: ObservableObject {
    @Published var requests : [Request]
    
    init(requests: [Request] = []) {
        self.requests = requests
    }
}

let testRequestStore = RequestStore(requests: testRequest)
