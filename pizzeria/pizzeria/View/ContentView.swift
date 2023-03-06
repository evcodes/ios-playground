//
//  ContentView.swift
//  pizzeria
//
//  Created by Varela, Eddy on 3/6/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Welcome to the pizzeria")
            
            List(PizzaModel().pizzas){ pizza in
                VStack(alignment: .leading){
                    Text(pizza.name).font(.title)
                    HStack {
                        Text(pizza.topping1)
                        Text(pizza.topping2)
                        Text(pizza.topping3)
                    }
                   
                }
                .padding(0.0)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
