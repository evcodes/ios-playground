//
//  RecipeModel.swift
//  RecipeListApp
//
//  Created by Varela, Eddy on 3/18/23.
//

import Foundation

class RecipeModel: ObservableObject{
    @Published var recipes = [Recipe]();
    
    init (){
       // create instance of data service and get the data set to recipes
        self.recipes = DataService.getLocalData()
    }
}
