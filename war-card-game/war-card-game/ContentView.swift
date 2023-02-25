//
//  ContentView.swift
//  war-card-game
//
//  Created by Varela, Eddy on 2/25/23.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card3")
                    Spacer()
                    Image("card4")
                    Spacer()
                }
                Spacer()
                Image("dealbutton")
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }.foregroundColor(Color.white)
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                            
                        Text("0")
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
