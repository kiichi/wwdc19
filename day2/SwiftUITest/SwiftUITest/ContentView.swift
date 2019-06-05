//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Kiichi Takeuchi on 6/4/19.
//  Copyright © 2019 Long Island Univrsity. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        VStack {
            EmployeeView(employee: Employee(name: "Kiichi", jobTitle: "Dev", imageName: "user1"))
            EmployeeView(employee: Employee(name: "John Doe", jobTitle: "Associate Sales Manager", imageName: "user2"))
            EmployeeView(employee: Employee(name: "Mary Ann", jobTitle: "Directory of Media Arts", imageName: "user3"))
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
