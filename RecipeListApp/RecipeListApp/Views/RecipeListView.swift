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
        List(model.recipes){ r in
            HStack(spacing: 0.52 ){
                Image(r.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height:50, alignment: .center)
                    .clipped()
                    .cornerRadius(5)
                    .padding(.trailing)
                Text(r.name)
            }
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
