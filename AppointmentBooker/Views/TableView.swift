//
//  TableView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-03.
//

import SwiftUI

struct TableView: View {
    
    @State private var timeIndex = 0
    
    var body: some View {
        Form {
            Section {
                Picker(selection: $timeIndex, label: Text("Select Time")) {
                    ForEach(0 ..< timeSlots.count) {
                        Text(self.timeSlots[$0].tag($0))
                    }
                }
            }
        }
    }
    
    // A function that allows
    func submit() {
        
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
