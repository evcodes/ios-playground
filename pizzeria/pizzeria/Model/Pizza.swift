//
//  Pizza.swift
//  pizzeria
//
//  Created by Varela, Eddy on 3/6/23.
//

import Foundation

class Pizza: Identifiable, Decodable {
    var id: UUID?;
    var name: String;
    var imageName: String;
    var ingredient1: String;
    var ingredient2: String;
}
