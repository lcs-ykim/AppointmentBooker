//
//  RowViewC.swift
//  AppointmentBooker
//
//  Created by Yeseo Kim on 2021-03-15.
//

import SwiftUI

struct RowViewC: View {
    
    // Controls whether the ConfirmView is showing
    @State private var showingConfirm = false
    
    // Controls whether the alert is showing
    @State private var showingAlert = false
    
    var request: Request
        
    var body: some View {
        
        HStack {
            
            VStack(alignment: .leading) {
                
                Text(request.time.date)
                    .fontWeight(.bold)
                
                Text(request.time.time)
                    .font(.caption)
            }
            
            HStack {
                
                Image(systemName: "checkmark.circle")
                    .onTapGesture {
                        
                        showingConfirm = true
                        
                    }
                    .sheet(isPresented: $showingConfirm) {
                        ConfirmView(request: request, showing: $showingConfirm)
                    }
                
                Image(systemName: "xmark.circle")
                    .onTapGesture {
                        
                        showingAlert = true
                        
                    }
                    .alert(isPresented: $showingAlert) {
                        Alert(title: Text("Denying Request"), message: Text("Are you sure you want to deny?"), primaryButton: .default(Text("Yes")) {
                            request.status = RequestStatus.denied
                        },
                        secondaryButton: .cancel(Text("No")))
                        
                        
                    }
                
            }
            
        }
    }
}

struct RowViewC_Previews: PreviewProvider {
    static var previews: some View {
        RowViewC(request: testRequest[0])
    }
}
