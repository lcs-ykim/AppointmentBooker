//
//  ConfirmView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-15.
//

import SwiftUI

struct ConfirmView: View {
    
    @ObservedObject var request: Request
    
    @State private var note = ""
    
    // Whether to show this view
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    
                    Text("Appointment at \(request.time.date) \(request.time.time)")
                    
                    TextField("Notes to Student", text: $note)
                    
                }
            }
            .navigationTitle("Accepting request")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Confirm") {
                        
                        sendConfirm()
                        
                    }
                }
            }
        }
    }
    
    // Confirm request
    func sendConfirm() {
        
        request.status = RequestStatus.accepted
        request.time.availability = availability.unavailable
        
        // Sends confirmation to student
        
        
        // Dismiss the view
        showing = false
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(request: testRequest[0], showing: .constant(true))
    }
}
