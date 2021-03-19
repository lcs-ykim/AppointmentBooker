//
//  RowView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-02.
//

import SwiftUI

struct RowView: View {
    
    // Controls whether the RequestView is showing
    @State private var showingRequest = false
    
    var time: Time
    
    var body: some View {
        
        HStack {
            
            VStack(alignment: .leading) {
                
                Text(time.date)
                    .fontWeight(.bold)
                
                Text(time.time)
                    .font(.caption)
            }
            
            
            Image(systemName: "chevron.right")
                .onTapGesture {
                    
                    showingRequest = true
                    
                }
                .sheet(isPresented: $showingRequest) {
                    RequestView(time: time, showing: $showingRequest)
                }
            
        }
        
    }
    
}


struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(time: testStore.times.list[0])
    }
}
