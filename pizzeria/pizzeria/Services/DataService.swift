//
//  DataService.swift
//  pizzeria
//
//  Created by Varela, Eddy on 3/19/23.
//

import Foundation

class DataService{
    // decode the data from json file...
    static func getLocalData(jsonData fileName: String) -> [Pizza]{
        var pizzaList = [Pizza]()
        
        // Parse local json file
        let pathString = Bundle.main.path(forResource: fileName, ofType: "json")
        
        //guard statement
        guard pathString != nil else{
            return [Pizza]()
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
                let pizzaData = try decoder.decode([Pizza].self, from: dataObj)
                
                // add the unique IDs
                for p in pizzaData{
                    p.id = UUID()
                }
                pizzaList = pizzaData
                
            }catch{
                    print("failed to decode data with error: \(error)")
            }
        }catch{
            print("failed to create data object with \(error)")
        }
        return pizzaList
    }
}
