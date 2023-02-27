//
//  ContentView.swift
//  ButtonChallenge
//
//  Created by Varela, Eddy on 2/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Button(action: {print("I'm tapped")}) {
                Text("Tap me.")
            }
            Button(action: {print("something")}){
                HStack{
                    Image(systemName: "play.fill")
                    Text("Play video")
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
