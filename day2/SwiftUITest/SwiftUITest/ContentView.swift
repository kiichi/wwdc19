//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Kiichi Takeuchi on 6/4/19.
//  Copyright © 2019 Long Island Univrsity. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    // declare list of components with @State
    var body: some View {
        // Use List(varname) { items in ...
        VStack {
            EmployeeView(name: "Kiichi Takeuchi")
            EmployeeView(name: "John Doe")
            EmployeeView(name: "Mary Ann")
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
