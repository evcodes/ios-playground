//
//  ContentView.swift
//  challenge12
//
//  Created by Varela, Eddy on 2/27/23.
//

import SwiftUI

struct ContentView: View {
    @State var number = 0
    @State var flag = false
    var body: some View {
        VStack {
           Text(String(number))
            Button(action: {
                
                if (number < 0){
                    flag = false
                }
                if (number > 50){
                    flag = true
                }
                if (!flag){
                    increase()
                }
                else if (flag){
                    decrease()
                }
            }){
            Text("change number")
            }
        }
        
    }
    func increase(){
        number += Int.random(in: 1...24)
    }
    func decrease(){
        number -= Int.random(in: 1...3)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
