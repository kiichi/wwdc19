//
//  ProfileImageView.swift
//  SwiftUITest
//
//  Created by Kiichi Takeuchi on 6/5/19.
//  Copyright © 2019 Long Island Univrsity. All rights reserved.
//

import SwiftUI

struct ProfileImageView : View {
    var body: some View {
        Image("user1")
            .frame(height:200)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .background(Color.gray, cornerRadius: 20)
            .scaledToFit()
        
    }
}

#if DEBUG
struct ProfileImageView_Previews : PreviewProvider {
    static var previews: some View {
        ProfileImageView()
    }
}
#endif
