//
//  ContentView.swift
//  SwiftUITest
//
//  Created by Kiichi Takeuchi on 6/4/19.
//  Copyright © 2019 Long Island Univrsity. All rights reserved.
//

import SwiftUI
let employees: [Employee] = [
    Employee(id:1, name: "Kiichi", jobTitle: "Sr. App Developer", imageName: "user1", badgeIds:[1,2,4,5]),
    Employee(id:2, name: "John Doe", jobTitle: "Associate Sales Manager", imageName: "user2", badgeIds:[2,5]),
    Employee(id:3, name: "Mary Ann", jobTitle: "Directory of Media Arts", imageName: "user3", badgeIds:[1,3,4]),
    Employee(id:4, name: "Ken Son", jobTitle: "QA", imageName: "user1", badgeIds:[4]),
    Employee(id:5, name: "Ali Shanker", jobTitle: "Support", imageName: "user2", badgeIds:[]),
    Employee(id:6, name: "Harry Smith", jobTitle: "Logistics", imageName: "user3", badgeIds:[1])
]
//let defaultEmployee = Employee(id:6, name: "", jobTitle: "", imageName: "user1", badgeIds:[])
struct ContentView : View {
    @State var blankEmployee:Employee = Employee.default
    var body: some View {
        NavigationView {
            EmployeeListView(searchEmployee: $blankEmployee)
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
