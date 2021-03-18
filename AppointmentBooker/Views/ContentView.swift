//
//  ContentView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-02.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: Stored properties
    @StateObject private var store = Store()

    // MARK: Computed properties
    var body: some View {
        
        BookingView(store: store)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
