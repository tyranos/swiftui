//
//  TabConstants.swift
//  chapter01
//
//  Created by Henry 2020 on 2020/01/03.
//  Copyright © 2020 Henry. All rights reserved.
//

import Foundation

enum TabName: Int {

    case home = 0
    case project = 1
    case search = 2
    case notification = 3
    case my = 4

    var imageName: String {
        switch self {
        case .home: return "house"
        case .project: return "star"
        case .search: return "magnifyingglass"
        case .notification: return "bell"
        case .my: return "person"
        }
    }

    var fillImageName: String {
        switch self {
        case .search: return "\(imageName)"
        default: return "\(imageName).fill"
        }
    }

    var title: String {
        switch self {
        case .home: return "Home"
        case .project: return "Project"
        case .search: return "Search"
        case .notification: return "Notification"
        case .my: return "My"
        }
    }
}
