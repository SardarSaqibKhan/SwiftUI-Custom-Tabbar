//
//  TabViewFour.swift
//  Customize Tabbar
//
//  Created by sardar saqib on 04/04/2025.
//

import SwiftUI

struct TabViewFour: View {
    var body: some View {
        NavigationView {
            Text("Notifications Screen")
                .navigationBarTitle(Tabs.notifications.label)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    TabViewFour()
}
