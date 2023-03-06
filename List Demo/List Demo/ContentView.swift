//
//  ContentView.swift
//  List Demo
//
//  Created by Varela, Eddy on 3/4/23.
//

import SwiftUI

struct ContentView: View {
    
    var myData = ["elem1", "elem2","elem3", "elem4"]
    
    var body: some View {
        
        NavigationView{
            List(myData, id: \.self){ myString in
                
                NavigationLink {
                    Text("Destination")
                } label: {
                    Text(myString)
                }
            }.navigationBarTitle(Text("My List"))
        }
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
