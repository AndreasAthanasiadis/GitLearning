//
//  ContentView.swift
//  GitLearning
//
//  Created by Andreas Athanasiadis on 6/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var showSheet = false
    @State var showNav = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Button(action: {
                    showNav = true
                }, label: {
                    Text("Git Learning Aasdasdpp")
                })
                Button(action: {
                    showSheet = true
                }, label: {
                    Text("Show Details")
                })
                
            }
            .padding()
            .sheet(isPresented: $showSheet, content: {
                DetailView()
            })
            .navigationDestination(isPresented: $showNav) {
                DetailView()
            }
        }
    }
}

#Preview {
    ContentView()
}
