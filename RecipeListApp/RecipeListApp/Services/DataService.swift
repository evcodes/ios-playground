//
//  DataService.swift
//  RecipeListApp
//
//  Created by Varela, Eddy on 3/18/23.
//

import Foundation

class DataService{
    // decode the data from json file...
    static func getLocalData() -> [Recipe]{
        var recipeList = [Recipe]()
        
        // Parse local json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //guard statement
        guard pathString != nil else{
            return [Recipe]()
        }
        // Create a URL Object
        let url = URL(fileURLWithPath: pathString!)
        
        let dataObj: Data;
        // Create a data object
        do{
            dataObj = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            do{
                // decode data with a json decoder
                let recipeData = try decoder.decode([Recipe].self, from: dataObj)
                
                // add the unique IDs
                for r in recipeData {
                    r.id = UUID()
                }
                recipeList = recipeData
                
            }catch{
                    print("failed to decode data with error: \(error)")
            }
        }catch{
            print("failed to create data object with \(error)")
        }
        return recipeList
    }
}
