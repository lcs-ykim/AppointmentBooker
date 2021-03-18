//
//  Time.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-02.
//

import Foundation

struct Time: Codable, Identifiable {
    
    let date: String
    let time: String
    let personBooked: String
    let id: Int
    
}
