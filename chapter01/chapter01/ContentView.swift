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
//        UITabBar.appearance().barTintColor = UIColor.black
    }

    var body: some View {
        TabView(selection: $selected) {
            HomeView().tabItem({
                resizeTabImage(index: 0, selected: self.selected == 0)
            }).tag(0)
            MyProjectView().tabItem({
                resizeTabImage(index: 1, selected: self.selected == 1)
            }).tag(1)
            SearchView().tabItem({
                resizeTabImage(index: 2, selected: self.selected == 2)
            }).tag(2)
            NotificationView().tabItem({
                resizeTabImage(index: 3, selected: self.selected == 3)
            }).tag(3)
            MyView().tabItem({
                resizeTabImage(index: 4, selected: self.selected == 4)
            }).tag(4)
        }
    }

    func resizeTabImage(index: Int, selected: Bool) -> some View {
        let tabName = TabName(rawValue: index)
        return VStack {
            (selected ? Image(systemName: tabName!.fillImageName) : Image(systemName: tabName!.imageName)).font(.some(Font.custom("Tab-Font", size: CGFloat(25))))
            Text(tabName!.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice(PreviewDevice(stringLiteral: "iPhone 8"))
            ContentView()
                .previewDevice(PreviewDevice(stringLiteral: "iPhone Xs"))
        }
    }
}
