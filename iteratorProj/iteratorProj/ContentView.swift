//
//  ContentView.swift
//  iteratorProj
//
//  Created by Varela, Eddy on 3/5/23.
//

import SwiftUI

struct ContentView: View {
    @State var numList: [Int] = [Int]()
    var body: some View {
    
        VStack{
            Spacer()
            List(numList, id: \.self){num in
                Text(String(num))
            }
            HStack{
                Button("Generate random"){
                    var candidate:Int
                    repeat {
                        candidate = Int.random(in: 1...10)
                        numList.append(candidate)
                    }while (candidate != 7)
                    
                }.padding()
                Button("Increase All"){
                    for idx in 0...numList.count-1 {
                        numList[idx] += 1
                    }
                }.padding()
                Button("Clear all") {
                    numList = []
                }.padding()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
