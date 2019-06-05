//
//  BadgeView.swift
//  SwiftUITest
//
//  Created by Kiichi Takeuchi on 6/5/19.
//  Copyright © 2019 Long Island Univrsity. All rights reserved.
//

import SwiftUI

struct BadgeImageView : View {
    let imageName:String
    var body: some View {
        Image(imageName)
            .frame(width:50, height: 50)
            //.imageScale(.small) // ?
            //.scaledToFit() //?
    }
}

#if DEBUG
struct BadgeImageView_Previews : PreviewProvider {
    static var previews: some View {
        BadgeImageView(imageName:"badge5")
    }
}
#endif
