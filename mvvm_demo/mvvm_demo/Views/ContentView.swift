//
//  ContentView.swift
//  mvvm_demo
//
//  Created by Varela, Eddy on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        VStack {
            List(model.recipes) {r in
                VStack(alignment: .leading){
                    Text(r.name)
                        .font(.title)
                    Text(r.cuisine)
                }
            }
            Button ("Add recipe"){
                model.addRecipe()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
} 
