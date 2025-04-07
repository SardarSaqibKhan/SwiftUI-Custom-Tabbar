//
//  FloatingDotTabbar.swift
//  Customize Tabbar
//
//  Created by sardar saqib on 04/04/2025.
//

import SwiftUI

struct FloatingDotTabbar: View {
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
        
      
    }
    
    func upperLineTabOverlay() -> some View {
        ZStack {
            Capsule()
                .frame(height: 60)
                .foregroundStyle(Color(.secondarySystemBackground))
                .shadow(radius: 2)
                .padding(.horizontal)
            
            HStack {
                ForEach(Tabs.allCases, id: \.self) { tab in
                    Spacer()
                    Button {
                        withAnimation {
                            selectedTab = tab.index
                        }
                    } label: {
                        VStack(spacing: 0) {
                          
                            tab.image
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .padding(.bottom, 2)
                                .padding(.top, 6)
                                .scaleEffect(selectedTab == tab.index ? 1.2 : 1.0)
                                
                            
                            
                            Text(tab.label)
                                .font(.system(size: 10))
                                .padding(.bottom, 2)
                            
                            if selectedTab == tab.index {
                                Circle()
                                    .frame(height: 10)
                                    .foregroundStyle(Color.blue)
                                    .matchedGeometryEffect(id: "selectedTabId", in: animatedNamespace)
                            } else {
                                Circle()
                                    .frame(height: 10)
                                    .foregroundStyle(Color.clear)
                                    
                            }
                        }
                        .foregroundStyle(selectedTab == tab.index ? Color.blue : Color.gray)
                    }
                    Spacer()
                }
            }
            .frame(height: 60)
            
        }
    }
}

#Preview {
    FloatingDotTabbar()
}
