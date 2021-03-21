//
//  BookingView.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-11.
//

import SwiftUI

struct BookingView: View {
    
    // Stores all times that are being tracked
    @ObservedObject var store: Store
    
    var body: some View {
        
        NavigationView {
            Form {
                
                List(store.times.list.filter({ row in
                    return row.personBooked == "none" // filter out time slots that are occupied
                    
                })) { time in

                    RowView(time: time)
                    
                }
                
            }
            .navigationBarTitle("Choose time of your choice", displayMode: .inline)

        }
        
    }
}


struct BookingView_Previews: PreviewProvider {
    static var previews: some View {
        BookingView(store: testStore)
    }
}
