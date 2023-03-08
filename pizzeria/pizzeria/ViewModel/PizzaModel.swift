//
//  PizzaModel.swift
//  pizzeria
//
//  Created by Varela, Eddy on 3/6/23.
//

import Foundation

class PizzaModel: ObservableObject {
    @Published var pizzas = [Pizza]()
    
    init (){
        let pizza1 = Pizza(id: UUID(), name: "Neapolitan", topping1: "Cheese", topping2: "Ham", topping3: "Red Sauce")
        pizzas.append(pizza1)
        let pizza2 = Pizza(id:UUID(), name: "Deluxe",topping1: "Pepperoni", topping2: "Mushroom", topping3: "Green Peppers")
        pizzas.append(pizza2)
        let pizza3 = Pizza(name: "Hawaiian",topping1: "Ham", topping2: "Bacon",topping3: "Pineapple")
        pizzas.append(pizza3)
    }
    func makeHawaiian(){
        for i in 0...pizzas.count-1{
            pizzas[i].topping1 = "Pineapple"
        }
        
    }
}
