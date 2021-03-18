//
//  AppointmentView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-03.
//

import SwiftUI

struct AppointmentView: View {
    
    // Stores all tasks that are being tracked
    @ObservedObject var store: Store
    
    
    var body: some View {
        
        NavigationView {
            Form {
                
                List(store.times.list) { time in
                    
                    RowViewC(time: time)
                    
                }

            }
            .navigationBarTitle("Current Student Requests", displayMode: .inline)
            
        }
        
    }
    
}

struct AppointmentView_Previews: PreviewProvider {
    static var previews: some View {
        AppointmentView(store: testStore)
    }
}
