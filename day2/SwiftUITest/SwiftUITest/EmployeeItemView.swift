//
//  EmployeeItemView.swift
//  SwiftUITest
//
//  Created by Kiichi Takeuchi on 6/6/19.
//  Copyright © 2019 Long Island Univrsity. All rights reserved.
//

import SwiftUI

// Make sure you have profile image with "sm" postfix e.g. user1sm.png
struct EmployeeItemView : View {
    var employee: Employee
    var body: some View {
            HStack {
                Image("\(employee.imageName)sm").frame(width:50,height: 50)
                VStack(alignment: .leading){
                    Text("\(employee.name) \(String(repeating: "⭐️", count: employee.badgeIds.count))")
                        .font(.body)
                        .color(.primary)
                    Text(employee.jobTitle)
                        .font(.caption)
                        .color(.gray)
                }
            }
    }
}
#if DEBUG
struct EmployeeItemView_Previews : PreviewProvider {
    static var previews: some View {
        //EmployeeView()
        EmployeeItemView(employee: Employee(id:1, name: "Kiichi Takeuchi", jobTitle: "Sr. App Developer", imageName: "user1", badgeIds:[1,2,3, 4, 5]))
    }
}
#endif
