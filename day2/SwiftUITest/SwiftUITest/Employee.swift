//
//  Employee.swift
//  SwiftUITest
//
//  Created by Kiichi Takeuchi on 6/5/19.
//  Copyright © 2019 Long Island Univrsity. All rights reserved.
//

import SwiftUI

struct Employee: Hashable, Codable, Identifiable {
    var id: Int // need this to conform to Identifiable
    
    var name : String
    var jobTitle : String
    var imageName: String
}
