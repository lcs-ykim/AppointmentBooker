//
//  AppointmentView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-03.
//

import SwiftUI

struct AppointmentView: View {
    
    @State private var timeIndex = 0
    
    var body: some View {
        VStack {
            
            List(timeSlots) { slot in
                
                RowView(time: slot)
                
            }
            
            Button() {

            }

        }.navigationTitle("Confirm appointment with the student.")
        
    }
    
}

struct AppointmentView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentView()
    }
}
