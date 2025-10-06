//
//  ContentView.swift
//  GitLearning
//
//  Created by Andreas Athanasiadis on 6/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var showSheet = false
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: {
                    DetailView()
                }, label: {
                    Text("Git Learning App")
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
        }
    }
}

#Preview {
    ContentView()
}
