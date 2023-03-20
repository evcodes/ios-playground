//
//  ContentView.swift
//  pizzeria
//
//  Created by Varela, Eddy on 3/6/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = PizzaModel()
    var body: some View {
        VStack {
            Text("Welcome to the pizzeria")
            
        // This project has two different ways of achieving the same thing
            ScrollView{
                ForEach(model.pizzas, id: \.id){ p in
                    HStack{
                        Image(p.imageName)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50 , height:50 , alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        
                        VStack{
                            Text(p.name)
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.leading)
                            
                            HStack{
                                Text(p.ingredient1).font(.caption)
                                Text(p.ingredient2).font(.caption)
                                
                            }
                        }
                        
                        Spacer()
                    }.padding(.leading)
                }
            }
            
//            List(model.pizzas){ p in
//                HStack{
//                    Image(p.imageName)
//                        .resizable()
//                        .scaledToFill()
//                        .frame(width: 50 , height:50 , alignment: .center)
//                        .clipped()
//                        .cornerRadius(5)
//
//                    VStack{
//                        Text(p.name)
//                            .font(.title2)
//                            .fontWeight(.bold)
//                            .padding(.leading)
//
//                        HStack{
//                            Text(p.ingredient1).font(.caption)
//                            Text(p.ingredient2).font(.caption)
//
//                        }
//                    }
//
//                }
//            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
