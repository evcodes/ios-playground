//
//  ContentView.swift
//  SlotsGame
//
//  Created by Varela, Eddy on 2/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var credits = 1000
    @State var didWin: Bool = true
    
    @State var imageResults = ["star", "star", "star"]

    var body: some View {
    
        ZStack {
            Color.orange.edgesIgnoringSafeArea(.all)

            VStack {
                Spacer()
                Text("Swift Slots")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                Text("Your credits: " + String(credits))
                Spacer()
                HStack{
                    Image(imageResults[0]).resizable().scaledToFit()
                    Image(imageResults[1]).resizable().scaledToFit()
                    Image(imageResults[2]).resizable().scaledToFit()
                }.padding()
                Spacer()
                Button(action: {handleSpin()}) {
                    Text("Spin")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .padding(.leading, 40.0)
                        .padding(.trailing, 40.0)
                        .padding(.top, 10.0)
                        .padding(.bottom, 10.0)
                        .background(Color.red)
                        .foregroundColor(Color.white)
                        .cornerRadius(30.0)
                }
                Spacer()
            }
        }
    }
    func handleSpin(){
        credits -= 20
        let slotsResult = [Int.random(in: 1...3), Int.random(in: 1...3), Int.random(in: 1...3)]
        if ((slotsResult[0] == slotsResult[1]) && (slotsResult[1] == slotsResult[2])){
            credits += 200
        }
        slotsResult.indices.forEach { index in
            if (slotsResult[index] == 1){ //star
                imageResults[index] = "star"
            }else if (slotsResult[index] == 2){
                imageResults[index] = "apple"
            } else { // cherry
                imageResults[index] = "cherry"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
