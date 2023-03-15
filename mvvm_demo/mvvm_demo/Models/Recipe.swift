//
//  Recipe.swift
//  mvvm_demo
//
//  Created by Varela, Eddy on 3/13/23.
//

import Foundation

class Recipe: Identifiable, Decodable{
    var id:UUID?;
    var name: String;
    var cuisine: String;
}
