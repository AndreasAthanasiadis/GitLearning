//
//  ContentView.swift
//  GitLearning
//
//  Created by Andreas Athanasiadis on 6/10/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: {
                    DetailView()
                }, label: {
                    Text("Git Learning App")
                })
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
