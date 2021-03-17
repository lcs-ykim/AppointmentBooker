//
//  AppointmentView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-03.
//

import SwiftUI

struct AppointmentView: View {
    
    // Stores all tasks that are being tracked
    @ObservedObject var store: RequestStore
    
    
    var body: some View {
        
        NavigationView {
            Form {
                
                List(store.requests) { request in
                    
                    RowViewC(request: request)
                    
                }

            }
            .navigationBarTitle("Current Student Requests", displayMode: .inline)
            
        }
        
    }
    
}

struct AppointmentView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentView(store: testRequestStore)
    }
}
