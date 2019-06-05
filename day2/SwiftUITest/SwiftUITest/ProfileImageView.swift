//
//  ProfileImageView.swift
//  SwiftUITest
//
//  Created by Kiichi Takeuchi on 6/5/19.
//  Copyright © 2019 Long Island Univrsity. All rights reserved.
//

import SwiftUI

struct ProfileImageView : View {
    let imageName:String
    var body: some View {
        Image(imageName)
            //.background(Color.gray, cornerRadius: 20)
            .frame(width:200, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .overlay(
                RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 5)
            )
            .shadow(radius: 10)
            .padding()
            .scaledToFit() // mmm not working
    }
}

#if DEBUG
struct ProfileImageView_Previews : PreviewProvider {
    static var previews: some View {
        ProfileImageView(imageName:"user1")
    }
}
#endif
