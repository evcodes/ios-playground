//
//  ContentView.swift
//  war-card-game
//
//  Created by Varela, Eddy on 2/25/23.
//

import SwiftUI

struct ContentView: View {
    
    // state property that is mutable
    @State private var playerCard = "back"
    @State private var cpuCard = "back"
    @State private var playerScore:Int = 0
    @State private var cpuScore:Int = 0
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                //Deal Button
                Button(action: {
                    
                    //rand num generate 2-14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if (playerRand > cpuRand) {
                        playerScore += 1
                    }else if (cpuRand > playerRand) {
                        cpuScore += 1
                    }
                    
                }) {
                    Image("dealbutton")
                }
                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }.foregroundColor(Color.white)
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }.foregroundColor(Color.white)
                    Spacer()
                }
            Spacer()
            }
        }
        
    }}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
