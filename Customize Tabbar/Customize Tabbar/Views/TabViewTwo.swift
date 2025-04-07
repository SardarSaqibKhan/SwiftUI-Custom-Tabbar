//
//  TabViewTwo.swift
//  Customize Tabbar
//
//  Created by sardar saqib on 04/04/2025.
//

import SwiftUI

struct TabViewTwo: View {
    var body: some View {
        NavigationView {
            List {
                ForEach((0..<20).map { $0 }, id: \.self) { item in
                    NavigationLink(destination: Text("Destination \(item)")) {
                        Text("Go to \(item)")
                    }
                }
            }
            .navigationTitle(Tabs.explore.label)
            .navigationBarTitleDisplayMode(.inline)
        }
       
    }
}

#Preview {
    TabViewTwo()
}
