//
//  RowView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-02.
//

import SwiftUI

struct RowView: View {
    var time: Time

    var body: some View {
        
        HStack {
            
            time.availability ? Text("✅")
                .font(.largeTitle) : Text("🚫")
            
            VStack(alignment: .leading) {
                
                Text(time.date)
                    .fontWeight(.bold)
                
                Text(time.time)
                    .font(.caption)
            }
        
        }
        
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(time: timeSlots[0])
    }
}
