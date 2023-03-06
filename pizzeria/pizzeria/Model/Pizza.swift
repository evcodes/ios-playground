//
//  Pizza.swift
//  pizzeria
//
//  Created by Varela, Eddy on 3/6/23.
//

import Foundation

struct Pizza: Identifiable {
    var id = UUID()
    var name: String;
    var topping1: String;
    var topping2: String;
    var topping3: String;
}
