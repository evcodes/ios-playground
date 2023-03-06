//
//  ContentView.swift
//  lesson3Challenge
//
//  Created by Varela, Eddy on 3/4/23.
//

import SwiftUI

struct ContentView: View {
    var myList = ["red", "orange", "blue", "yellow", "black"]
    @State var uiList:[String] = [String]()
    var body: some View {
        VStack {
            List(uiList, id: \.self){myString in
                Text(myString)
            }
            Button {
                uiList.append(myList[Int.random(in: 0...4)])
            } label: {
                Text("Click me for new item")
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
