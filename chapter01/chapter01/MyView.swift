//
//  MyView.swift
//  chapter01
//
//  Created by Henry 2020 on 2020/01/03.
//  Copyright © 2020 Henry. All rights reserved.
//

import SwiftUI

struct MyView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "pencil.circle")
                Spacer()
                VStack {
                    Text("Nickname")
                    Text("Project : 2")
                }
                Spacer()
                Text("Setting Link")
            }
            Spacer()
        }
    }
}

struct MyView_Previews: PreviewProvider {
    static var previews: some View {
        MyView()
    }
}
