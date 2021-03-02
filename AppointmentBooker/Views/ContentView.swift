//
//  ContentView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-02.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            
            List(timeSlots) { slot in
                
                RowView(time: slot)
                
            }
            
//            Button() {
//
//            }
//        
        }.navigationTitle("Choose your time slot")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
