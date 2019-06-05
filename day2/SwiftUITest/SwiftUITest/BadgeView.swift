//
//  BadgeView.swift
//  SwiftUITest
//
//  Created by Kiichi Takeuchi on 6/5/19.
//  Copyright © 2019 Long Island Univrsity. All rights reserved.
//

import SwiftUI

struct BadgeImageView : View {
    var body: some View {
        Image("user1")
    }
}

#if DEBUG
struct BadgeImageView_Previews : PreviewProvider {
    static var previews: some View {
        BadgeImageView()
    }
}
#endif
