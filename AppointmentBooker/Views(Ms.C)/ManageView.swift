//
//  ManageView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-03.
//

import SwiftUI

struct ManageView: View {
    
    @State private var timeIndex = 0

    var body: some View {
        VStack {
            
            List(timeSlots) { slot in
                
                RowView(time: slot)
                
            }

        }.navigationTitle("Mark any unavailable times.")
        
    }
}

struct ManageView_Previews: PreviewProvider {
    static var previews: some View {
        ManageView()
    }
}
