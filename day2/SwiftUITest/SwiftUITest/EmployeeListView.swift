//
//  EmployeeListView.swift
//  SwiftUITest
//
//  Created by Kiichi Takeuchi on 6/6/19.
//  Copyright © 2019 Long Island Univrsity. All rights reserved.
//

import SwiftUI

struct EmployeeListView : View {
    @Binding var searchEmployee:Employee
    var body: some View {
        VStack{
            TextField($searchEmployee.name)
            Text("Type some keywords above... \($searchEmployee.name.value)")
            List{
                ForEach(employees) { emp in
                    if emp.name.contains(self.$searchEmployee.name.value) ||  self.$searchEmployee.name.value == "" {
                        NavigationButton(destination:EmployeeView(employee: emp)){
                            EmployeeItemView(employee: emp)
                        }
                    }
                    
                }
            }.navigationBarTitle(Text("Employees"))
        }
    }
}

#if DEBUG
struct EmployeeListView_Previews : PreviewProvider {
    static var previews: some View {
        //EmployeeListView()
        
        EmployeeListView(searchEmployee:.constant(.default))
    }
}
#endif
