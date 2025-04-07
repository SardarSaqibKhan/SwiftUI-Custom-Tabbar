//
//  UpperlineTabbar.swift
//  Customize Tabbar
//
//  Created by sardar saqib on 04/04/2025.
//

import SwiftUI

struct UpperlineTabbar: View {
    @Namespace private var animatedNamespace
    @State var selectedTab: Int = 0
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
       
        TabView(selection: $selectedTab) {
            TabViewOne()
                .tag(0)
            
            TabViewTwo()
                .tag(1)
            
            TabViewThree()
                .tag(2)
            
            TabViewFour()
                .tag(3)
        }
        .overlay(alignment: .bottom) {
            upperLineTabOverlay()
        }
        .edgesIgnoringSafeArea(.vertical)
      
    }
    
    func upperLineTabOverlay() -> some View {
        ZStack {
            Rectangle()
                .frame(height: 80)
                .foregroundStyle(Color(.secondarySystemBackground))
                .shadow(radius: 2)
            
            HStack {
                ForEach(Tabs.allCases, id: \.self) { tab in
                    Button {
                        selectedTab = tab.index
                    } label: {
                        VStack(spacing: 0) {
                            
                            if selectedTab == tab.index {
                                Capsule()
                                    .frame(height: 3)
                                    .foregroundStyle(Color.blue)
                                    .offset(y: -1.5)
                                    .matchedGeometryEffect(id: "selectedTabId", in: animatedNamespace)
                            } else {
                                Capsule()
                                    .frame(height: 3)
                                    .foregroundStyle(Color.clear)
                                    .offset(y: -1.5)
                            }
                            
                          
                            
                            tab.image
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .padding(.bottom, 2)
                                .padding(.top, 8)
                                .scaleEffect(selectedTab == tab.index ? 1.2 : 1.0)
                            
                            Text(tab.label)
                                .font(.system(size: 10))
                            
                            Spacer()
                            
                           
                            
                        }
                        .foregroundStyle(selectedTab == tab.index ? Color.blue : Color.gray)
                    }
                }
            }
            .frame(height: 80)
            
        }
    }
}
