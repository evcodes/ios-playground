//
//  RecipeListView.swift
//  RecipeListApp
//
//  Created by Varela, Eddy on 3/18/23.
//

import SwiftUI

struct RecipeListView: View {
    
    // Reference the ViewModel
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        NavigationView {
            List(model.recipes){ r in
                NavigationLink (
                    destination: RecipeDetailView(recipe: r),
                    label: {
                        //MARK: row item
                        HStack(spacing:20.0){
                            Image(r.image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 50, height:50)
                                .cornerRadius(5)
                            Spacer()
                            Text(r.name)
                        }
                    }
                )
            }.navigationBarTitle("My Recipes")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
