//
//  RecipeDetailView.swift
//  RecipeListApp
//
//  Created by Varela, Eddy on 3/31/23.
//

import SwiftUI

struct RecipeDetailView: View {

    var recipe:Recipe

    var body: some View {
        ScrollView{
            
            VStack(alignment: .leading){
                
                //MARK: Recipe Image
                Image(recipe.image).resizable().scaledToFill().ignoresSafeArea()
                
                //MARK: Recipe Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients").font(.title2).padding(.vertical, 2.0)
                    ForEach(recipe.ingredients, id:\.self){ item in
                        Text("-\(item)").padding(.vertical,0.5)
                    }
                }.padding(.horizontal)
                
                Divider()
                
                //MARK: Recipe Directions
                VStack(alignment: .leading) {
                    Text("Directions").font(.title2).padding(.vertical, 2)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        Text("\(index+1). \(recipe.directions[index])").padding(.vertical, 0.5)
                    }
                }.padding(.horizontal)
                
                //MARK: Recipe description
                Text(recipe.description).padding()
            }
            
        }.navigationBarTitle(recipe.name)
    }
}


//how to preview the detail view
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        //Create a dummy recipe
        
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
