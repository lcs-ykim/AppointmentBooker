//
//  AppointmentBookerApp.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-02.
//

import SwiftUI

@main
struct AppointmentBookerApp: App {
    
    @StateObject private var store = TimeStore(times: testData)

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
