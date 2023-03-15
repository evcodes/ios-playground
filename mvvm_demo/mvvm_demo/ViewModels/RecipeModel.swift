//
//  RecipeModel.swift
//  mvvm_demo
//
//  Created by Varela, Eddy on 3/13/23.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init(){
        let pathString = Bundle.main.path(forResource: "data", ofType: "json")
        if let myPath = pathString{
            //Create a URL Object
            let url = URL(fileURLWithPath: myPath)
            
            //error handling
            
            //do{
                //code that might throw
            //}
            //catch{
                //execution will come here if an error is thrown
            //}
            
            do {
                //Create a Data Object with the data at the URL
                let dataObj = try Data(contentsOf: url)
                
                //Parsing the data
                let decoder = JSONDecoder()
                
                do{
                    let recipeData = try decoder.decode([Recipe].self, from: dataObj)
                    
                    for recipeEntry in recipeData{
                        recipeEntry.id = UUID()
                    }
                    self.recipes = recipeData
                }catch{
                    // failed to decocde json
                    print(error)
                }

            } catch {
                //failed to find file
                print(error)
            }
        }
    }
    
    func addRecipe(){
        
    }
}
