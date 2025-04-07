//
//  SimpleTabbar.swift
//  Customize Tabbar
//
//  Created by sardar saqib on 04/04/2025.
//

import SwiftUI

struct SimpleTabbar: View {
    @State var selectedTab: Int = 0
    
    init() {
        UITabBar.appearance().isHidden = false 
    }
    var body: some View {
        TabView(selection: $selectedTab) {
            Group {
                TabViewOne()
                    .tabItem {
                        Tabs.home.image
                            .tabBarIconStyle()
                        
                        Text(Tabs.home.label)
                            .font(.system(size: 10))
                        
                    }
                    .tag(0)
                
                TabViewTwo()
                    .tabItem {
                        Tabs.explore.image
                            .tabBarIconStyle()
                        
                        Text(Tabs.explore.label)
                            .font(.system(size: 10))
                    }
                    .tag(1)
                
                TabViewThree()
                    .tabItem {
                        Tabs.favourites.image
                            .tabBarIconStyle()
                        
                        Text(Tabs.favourites.label)
                            .font(.system(size: 10))
                    }
                    .tag(2)
                
                TabViewFour()
                    .tabItem {
                        Tabs.notifications.image
                            .tabBarIconStyle()
                        
                        Text(Tabs.notifications.label)
                            .font(.system(size: 10))
                    }
                    .tag(3)
            }
            .toolbarBackground(Color(.secondarySystemBackground), for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
        .accentColor(.red)
    }
    
}

#Preview {
    SimpleTabbar()
}


struct TabBarIconStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .aspectRatio(contentMode: .fit)
            .frame(width: 24, height: 24)
            .padding(.bottom, 2)
            .padding(.top, 8)
    }
}
extension View {
    func tabBarIconStyle() -> some View {
        self.modifier(TabBarIconStyle())
    }
}
