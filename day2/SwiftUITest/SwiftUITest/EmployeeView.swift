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
            HStack {
                Spacer()
                ProfileImageView(imageName: employee.imageName)
                Spacer()
            }
            Text(employee.name)
            .font(.largeTitle)
            .color(.primary)
            Text(employee.jobTitle)
            .font(.title)
            .color(.secondary)
            HStack{
                ForEach(employee.badgeIds) { id in
                    BadgeImageView(imageName: "badge\(id)")
                }
            }
        }
    }
}
#if DEBUG
struct EmployeeView_Previews : PreviewProvider {
    static var previews: some View {
        //EmployeeView()
        EmployeeView(employee: Employee(id:1, name: "Kiichi Takeuchi", jobTitle: "Sr. App Developer", imageName: "user1", badgeIds:[1,2,3, 4, 5]))
    }
}
#endif
