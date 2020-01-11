//
//  ProfileImage.swift
//  chapter01
//
//  Created by Henry 2020 on 2020/01/05.
//  Copyright © 2020 Henry. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

struct ProfileImageView: View {
    @ObservedObject var remoteImage: RemoteImage

    init(imageUrl: String) {
        remoteImage = RemoteImage(imageUrl: imageUrl)
    }
    var body: some View {
        let defaultImage = #imageLiteral(resourceName: "profile")
        return Image(uiImage: (remoteImage.image == nil ? defaultImage : remoteImage.image)!)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 52, height: 52)
            .clipShape(Circle())
            .shadow(radius: 2)
    }
}
