//
//  TabViewOne.swift
//  Customize Tabbar
//
//  Created by sardar saqib on 04/04/2025.
//

import SwiftUI

struct TabViewOne: View {
    var body: some View {
        NavigationView {
            Text("Home Screen")
                .navigationBarTitle(Tabs.home.label)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    TabViewOne()
}
