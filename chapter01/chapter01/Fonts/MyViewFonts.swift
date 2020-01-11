//
//  MyViewFonts.swift
//  chapter01
//
//  Created by Henry 2020 on 2020/01/12.
//  Copyright © 2020 Henry. All rights reserved.
//

import SwiftUI

struct ProfileNameFont: ViewModifier {
    func body( content: Content) -> some View {
        content.font(.system(size: 16, weight: .bold, design: .rounded))
    }
}
