//
//  CustomTabbarView.swift
//  Customize Tabbar
//
//  Created by sardar saqib on 04/04/2025.
//

import SwiftUI

enum Tabs: String, CaseIterable, Hashable {
    
    case home
    case explore
    case favourites
    case notifications
    
    var index : Int {
        switch self {
        case .home:
            return 0
        case .explore:
            return 1
        case .favourites:
            return 2
        case .notifications:
            return 3
        }
    }
    
    var label: String {
        rawValue.capitalized
    }
    
    var image : Image {
        switch self {
        case .home:
            Image(systemName: "house.fill")
        case .explore:
            Image(systemName: "magnifyingglass")
        case .favourites:
            Image(systemName: "heart.fill")
        case .notifications:
            Image(systemName: "bell.badge.fill")
        }
    }
}
