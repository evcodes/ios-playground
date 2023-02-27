//
//  ContentView.swift
//  buttonTest
//
//  Created by Varela, Eddy on 2/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        VStack {
            // Button instance with Closure
            Button("press me", action: {
                print("i'm pressed")
            })
            
            // Button instance with a trailing closure
            Button("press me") {
                print("I'm also pressed")
            }
            
            // button instance with label view
            Button(action: {print("labelView")}) {
                HStack{
                    Image(systemName: "pencil")
                    Text("Edit")

                }
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
