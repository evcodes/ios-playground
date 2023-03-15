//
//  ContentView.swift
//  optionalChallenge
//
//  Created by Varela, Eddy on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    @State var apple: [String]?;
    
    var body: some View {
        VStack {
            Button("b1"){
                apple = nil
            }
            Button("b2"){
                if apple == nil{
                    apple = []
                }
                if apple != nil {
                    apple!.append("dog")
                    apple!.append("Cat")
                    apple!.append("Cow")
                }
                
            }
            Button("print list"){
                if apple != nil {
                    apple?.forEach({ entry in
                        print(entry)
                    })
                }
            }
            
            if apple == nil{
                Text("Press b2 to populate the list")
            }else{
                List(apple!, id: \.self){entry in
                    Text(entry)
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
