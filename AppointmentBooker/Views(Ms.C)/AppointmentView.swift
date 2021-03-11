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
            
            List(testStore.times) { slot in
                
                RowView(time: slot)
                
            }

        }.navigationTitle("Confirm appointment with the student.")
        
    }
    
}

struct AppointmentView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentView()
    }
}
