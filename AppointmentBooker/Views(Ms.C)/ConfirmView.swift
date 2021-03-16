//
//  ConfirmView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-15.
//

import SwiftUI

struct ConfirmView: View {
    
    @ObservedObject var time: Time
    
    @State private var note = ""
    
    // Whether to show this view
    @Binding var showing: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                Form {
                    
                    Text("Appointment at \(time.date) \(time.time)")
                    
                    TextField("Notes to Student", text: $note)
                    
                }
            }
            .navigationTitle("Confirming Appointment")
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
                    Button("Confirm") {
                        
                        sendConfirm()
                        
                    }
                }
            }
        }
    }
    
    // Sends request to Ms.Cosgrove
    func sendConfirm() {
        
        
        
        // Dismiss the view
        showing = false
    }
}

struct ConfirmView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmView(time: testData[0], showing: .constant(true))
    }
}
