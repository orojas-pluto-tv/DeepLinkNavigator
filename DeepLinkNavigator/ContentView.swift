//
//  ContentView.swift
//  DeepLinkNavigator
//
//  Created by Octavio Rojas on 03/01/24.
//

import SwiftUI

struct ContentView: View {
    @State private var textInput: String = ""

    var body: some View {
        VStack {
            TextField("Enter test URL:", text: $textInput)
                .padding()
            Button(action: {
                if let url = URL(string: textInput) {
                    UIApplication.shared.open(url, options: [:]) { success in
                        if !success {
                            print("Failed to open URL")
                        }
                    }
                } else {
                    print("Invalid URL format")
                }
            }, label: {
                Text("Test URL")
            })
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
