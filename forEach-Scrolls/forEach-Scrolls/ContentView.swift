//
//  ContentView.swift
//  forEach-Scrolls
//
//  Created by Varela, Eddy on 3/20/23.
//

import SwiftUI

struct ContentView: View {
    var array = ["Pizza", "Chicken", "Waffles", "Soup"]
    var body: some View {
        ScrollView {
            ForEach(array, id: \.self){ r in
                Text(r)
            }
            
            // If you want to know what index you are using, do this:
            
            ForEach(0...array.count-1, id:\.self){ index in
                
                Text(String(index) + ": " + array[index] )
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
