//
//  ContentView.swift
//  chapter01
//
//  Created by Henry 2020 on 2020/01/03.
//  Copyright © 2020 Henry. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selected = 0
    init() {
        UITabBar.appearance().barTintColor = UIColor.black
    }
    
    var body: some View {
        TabView(selection: $selected) {
            HomeView().tabItem( {
                self.selected == 0 ?
                Image(systemName: TabConstants.TabImage.HomeFill).font(.title)
                : Image(systemName: TabConstants.TabImage.Home).font(.title)
                
                }).tag(0)
            MyProjectView().tabItem( {
                self.selected == 1 ?
                    Image(systemName: TabConstants.TabImage.MyProjectFill).font(.title)
                    :

                Image(systemName: TabConstants.TabImage.MyProject).font(.title)
                }).tag(1)
            SearchView().tabItem( {
                self.selected == 2 ?
                    Image(systemName: TabConstants.TabImage.SearchFill).font(.title)
                    :
                Image(systemName: TabConstants.TabImage.Search).font(.title)
                }).tag(2)
            NotificationView().tabItem( {
                self.selected == 3 ?
                    Image(systemName: TabConstants.TabImage.NotificationFill).font(.title)
                    :
                Image(systemName: TabConstants.TabImage.Notification).font(.title)
                }).tag(3)

            MyView().tabItem( {
                self.selected == 4 ?
                    Image(systemName: TabConstants.TabImage.MyFill).font(.title)
                    :
                Image(systemName: TabConstants.TabImage.My).font(.title)
                }).tag(4)
        }
        .font(.headline)
        .accentColor(Color.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
