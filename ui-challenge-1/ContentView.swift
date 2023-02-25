//
//  ContentView.swift
//  test
//
//  Created by Varela, Eddy on 2/19/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            ZStack{
                Image("toronto")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                
                HStack{
                    VStack{
                        Text("CN Tower")
                            .font(.largeTitle)
                        Text("Toronto")
                            .font(.caption)
                    }
                    .padding()
                    
                }
                .foregroundColor(Color.white)
                .background(Color.black)
                .opacity(0.8)
                .cornerRadius(10)
            }.padding()
            
            Spacer()
            ZStack{
                Image("london")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10)
                
                HStack{
                    VStack{
                        Text("Big Ben")
                            .font(.largeTitle)
                        Text("London")
                            .font(.caption)
                    }
                    .padding()
                }
                .foregroundColor(Color.white)
                .background(Color.black)
                .opacity(0.8)
                .cornerRadius(10.0)
            }.padding().cornerRadius(10)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
