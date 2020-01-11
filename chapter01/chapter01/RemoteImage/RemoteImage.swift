//
//  RemoteImageURL.swift
//  chapter01
//
//  Created by Henry 2020 on 2020/01/05.
//  Copyright © 2020 Henry. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class RemoteImage: ObservableObject {
    @Published var image: UIImage?

    init(imageUrl: String) {
        if(imageUrl.isEmpty) { return }
        guard let url = URL(string: imageUrl) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let imageData = data, error == nil else { return }

            DispatchQueue.main.async {
                self.image = UIImage(data: imageData)!
            }
        }.resume()

    }

}
