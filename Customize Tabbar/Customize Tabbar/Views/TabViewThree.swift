//
//  TabViewThree.swift
//  Customize Tabbar
//
//  Created by sardar saqib on 04/04/2025.
//

import SwiftUI

struct TabViewThree: View {
    var body: some View {
        NavigationView {
            Text("Favourites Screen")
                .navigationBarTitle(Tabs.favourites.label)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    TabViewThree()
}
