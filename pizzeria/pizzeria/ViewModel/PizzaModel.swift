//
//  PizzaModel.swift
//  pizzeria
//
//  Created by Varela, Eddy on 3/6/23.
//

import Foundation

class PizzaModel: ObservableObject {
    @Published var pizzas = [Pizza]();
    
    init (){
        self.pizzas = DataService.getLocalData(jsonData: "pizza")
            
    }
}
