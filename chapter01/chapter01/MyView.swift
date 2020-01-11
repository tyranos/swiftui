//
//  MyView.swift
//  chapter01
//
//  Created by Henry 2020 on 2020/01/03.
//  Copyright © 2020 Henry. All rights reserved.
//

import SwiftUI

struct MyView: View {
    var profileImage: String = ""
    let settingImage = #imageLiteral(resourceName: "setting")

    init(profileImage: String) {
        self.profileImage = profileImage
    }

    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top) {
                ProfileImageView(imageUrl: profileImage).padding(.trailing, 11)
                VStack(alignment: .leading) {
                    Text("Nickname").modifier(ProfileNameFont()).padding(.top, 10)
                    Text("Project : 2").font(.system(size: 12, weight: .regular))
                }
                Spacer()
                Image(uiImage: settingImage).frame(width: 12, height: 12.5).shadow(radius: 4.0, y: 2.0).padding(.top, 5).padding( .trailing, 6)
            }.padding(.top, 15).padding(.leading, 14).padding(.trailing, 14)
            Spacer()
        }
    }
}

#if DEBUG
    struct MyView_Previews: PreviewProvider {
        static var previews: some View {
            MyView(profileImage: "")
        }
    }
#endif
