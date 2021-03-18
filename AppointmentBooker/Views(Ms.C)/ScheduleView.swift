//
//  ScheduleView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-17.
//

import SwiftUI

struct ScheduleView: View {
    
    @ObservedObject var store: Store
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ScheduleView_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleView(store: testStore)
    }
}
