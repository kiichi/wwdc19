//
//  EmployeeView.swift
//  SwiftUITest
//
//  Created by Kiichi Takeuchi on 6/5/19.
//  Copyright © 2019 Long Island Univrsity. All rights reserved.
//

import SwiftUI

struct EmployeeView : View {
    var employee: Employee
    var body: some View {
        VStack {
            ProfileImageView(imageName: employee.imageName)
            Text(employee.name)
            .font(.largeTitle)
            .color(.primary)
            Text(employee.jobTitle)
            .font(.title)
            .color(.secondary)
        }
    }
}
#if DEBUG
struct EmployeeView_Previews : PreviewProvider {
    static var previews: some View {
        //EmployeeView()
        EmployeeView(employee: Employee(name: "Kiichi Takeuchi", jobTitle: "Sr. App Developer", imageName: "user1"))
    }
}
#endif
