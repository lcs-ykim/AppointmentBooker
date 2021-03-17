//
//  StatusView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-16.
//

import SwiftUI

struct StatusView: View {
    
    var request: Request
    
    var body: some View {
        NavigationView {
            Form {
                
                Section(header: Text("Date and Time")) {
                    
                    Text("\(request.time.date)")
                    Text("\(request.time.time)")
                                        
                }
                
                Section(header: Text("Status")) {
                    
                    Text("\(request.status.rawValue)")

                }
                
                }
                .navigationBarTitle("Request Status", displayMode: .inline)

            }
        
        }
    }

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView(request: testRequest[0])
    }
}
