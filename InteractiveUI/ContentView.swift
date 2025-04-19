//
//  ContentView.swift
//  InteractiveUI
//
//  Created by Scholar on 4/19/25.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var date = ""
    @State private var presentAlert = false
    var body: some View {
        VStack {
            Text("Tell us about yourself!")
                .font(.title)
            TextField("Type your name here", text: $name)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            TextField("Type your birthdate here", text: $date)
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit") {
                presentAlert = true
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
        }
        .alert("Thank you \(name), we know your birthday is \(date)!", isPresented: $presentAlert, actions: {
        })
    }
}

#Preview {
    ContentView()
}
