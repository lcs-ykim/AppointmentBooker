//
//  BookingView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-11.
//

import SwiftUI

struct BookingView: View {
    
    // Stores all tasks that are being tracked
    @ObservedObject var store: TimeStore
    
    // Controls whether the add task view is showing
    @State private var showingAddTask = false
    
    var body: some View {
        List(store.times) { slot in
            RowView(time: slot)
        }
        .navigationTitle("Book Appointment")
        
    }
}

struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView(store: testStore)
    }
}
