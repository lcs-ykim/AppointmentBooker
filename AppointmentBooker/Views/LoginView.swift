//
//  SignInView.swift
//  GoogleAuthSheetsWriterExample
//
//  Created by Cloutier, Vincent on 2020-11-23.
//

import SwiftUI
import GoogleSignIn

struct SignInButton: UIViewRepresentable {
    func makeUIView(context: Context) -> GIDSignInButton {
        let button = GIDSignInButton()
        // Customize button here
        button.colorScheme = .light
        return button
    }
    func updateUIView(_ uiView: UIViewType, context: Context) {}
}

struct SignInView: View {
    var body: some View {
        VStack {
            // About Me page
            NavigationLink(
                destination: AboutMeView(),
                label: {
                    Text("About Me")
                })
            // User help
            Text("Book an appointment with Ms.Cosgrove at the well-being centre. Please sign in with your LCS email below:")
            // Google sign in button
            SignInButton()
            
        }
        .padding()
        .navigationTitle("WBC Appointment Booker")
    }
}
