//
//  EmployeeView.swift
//  SwiftUITest
//
//  Created by Kiichi Takeuchi on 6/5/19.
//  Copyright © 2019 Long Island Univrsity. All rights reserved.
//

import SwiftUI

struct EmployeeView : View {
    var name:String
    var body: some View {
        Text(self.name)
        .font(.largeTitle)
        .color(.primary)
    }
}
#if DEBUG
struct EmployeeView_Previews : PreviewProvider {
    static var previews: some View {
        EmployeeView(name: "Kiichi Takeuchi")
    }
}
#endif
