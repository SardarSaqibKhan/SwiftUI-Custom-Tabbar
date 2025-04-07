//
//  ContentView.swift
//  Customize Tabbar
//
//  Created by sardar saqib on 04/04/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("Upperline Tabbar", destination: UpperlineTabbar())
                
               
                NavigationLink("FloatingDot Tabbar", destination: FloatingDotTabbar())
                NavigationLink("Floating Tabbar", destination: FloatingTabbar())
                NavigationLink("Simple Tabbar", destination: SimpleTabbar())
            }
            .navigationTitle("Custom Tabbar Example")
        }
        
    }
}

#Preview {
    ContentView()
}
