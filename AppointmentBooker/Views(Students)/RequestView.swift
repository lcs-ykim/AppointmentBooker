//
//  RequestView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-11.
//

import SwiftUI

struct RequestView: View {
    
    var time: Time
    
    @State private var note = ""
    
    // Whether to show this view
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    
                    Text("Appointment at \(time.date) \(time.time)")
                    
                    TextField("Notes to Ms.Cosgrove", text: $note)
                    
                }
            }
            .navigationTitle("Sending Request")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Send") {
                        
                        sendRequest()
                        
                    }
                }
            }
        }
    }
    
    // Sends request to Ms.Cosgrove
    func sendRequest() {
        
        // Assign student name to time slot
        
        // Sends request
        
        // Dismiss the view
        showing = false
        
        StatusView(time: time)
    }
}

struct RequestView_Previews: PreviewProvider {
    static var previews: some View {
        RequestView(time: testStore.times.list[0], showing: .constant(true))
    }
}
