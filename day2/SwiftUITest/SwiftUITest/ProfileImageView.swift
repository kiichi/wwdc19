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
            .frame(height:200)
            .scaledToFit() // mmm not working
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .background(Color.gray, cornerRadius: 20)        
    }
}

#if DEBUG
struct ProfileImageView_Previews : PreviewProvider {
    static var previews: some View {
        ProfileImageView(imageName:"user1")
    }
}
#endif
