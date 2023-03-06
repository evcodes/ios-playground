//
//  PizzaModel.swift
//  pizzeria
//
//  Created by Varela, Eddy on 3/6/23.
//

import Foundation

class PizzaModel {
    var pizzas = [Pizza]()
    
    init (){
        let myPizza = Pizza(id: UUID(), name: "Neapolitan", topping1: "Cheese", topping2: "Ham", topping3: "Red Sauce")
        pizzas.append(myPizza)
    }
}
