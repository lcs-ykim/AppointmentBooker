//
//  AppointmentView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-03.
//

import SwiftUI

struct AppointmentView: View {
    
    // Stores all tasks that are being tracked
    @ObservedObject var store: TimeStore
    
    
    var body: some View {
        VStack {
            
            List(store.times) { slot in
                
                RowViewC(time: slot)
                
            }

        }.navigationTitle("Confirm Appointment")
        
    }
    
}

struct AppointmentView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentView(store: testStore)
    }
}
