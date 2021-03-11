//
//  ContentView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-02.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        BookingView(store: testStore)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
