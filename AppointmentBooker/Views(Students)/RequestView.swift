//
//  RequestView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-11.
//

import SwiftUI

struct RequestView: View {
    
    @ObservedObject var time: Time
    
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
        
        time.requested = true
        
        // Dismiss the view
        showing = false
    }
}

struct RequestView_Previews: PreviewProvider {
    static var previews: some View {
        RequestView(time: testData[0], showing: .constant(true))
    }
}