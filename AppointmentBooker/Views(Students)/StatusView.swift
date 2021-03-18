//
//  StatusView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-16.
//

import SwiftUI

// StatusView will be shown when the student has made a request

struct StatusView: View {
    
    var time: Time
    
    var body: some View {
        NavigationView {
            Form {
                
                Section(header: Text("Date and Time")) {
                    
                    Text("\(time.date)")
                    Text("\(time.time)")
                                        
                }
                
                Section(header: Text("Status")) {
                    
                    Text("sent")

                }
                
                }
                .navigationBarTitle("Request Status", displayMode: .inline)

            }
        
        }
    }

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView(time: testStore.times.list[0])
    }
}
