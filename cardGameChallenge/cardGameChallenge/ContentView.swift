//
//  ContentView.swift
//  cardGameChallenge
//
//  Created by Varela, Eddy on 3/1/23.
//

import SwiftUI


struct PlayingCard {
    // Ace is 1, King is 13
    var playingCard: Int
    // Spade = 0, Diamonds = 1, Club = 2, Hearts = 3
    public var playCardSuit :Int
}

struct ContentView: View {
    @State var deck = [PlayingCard]()
    @State var message = "Welcome to the game.\nHere's where you'll be reading the information from button presses"
    @State var generatedLog = [String]()
    
    let suits = ["Diamonds", "Spades", "Hearts", "Clubs"]
    let card = ["Ace", "2","3","4","5","6","7","8","9","10","Jack", "Queen", "King"]
    
    var body: some View {
        VStack {
            Text(message).padding()
            HStack{
                Spacer()
                VStack{
                    Button("Generate new card") {
                        generateNewCard()
                    }.padding()
                    Button("Draw from deck") {
                        drawingCardFromDeck()
                    }.padding()
                    Text("Number of cards in your deck: \(deck.count)")

                }
            }
        }
        .padding()
    }
    func generateNewCard(){
        let suit = Int.random(in: 0...3)
        let num = Int.random(in: 0...12)
        let newCard = PlayingCard(playingCard: num, playCardSuit: suit)
        let newString = "Generated a \(num) of \(suit)"
        
        if generatedLog.contains(newString){
            message = "Sorry, generated a duplicate card. Please try again!"
        }else{
            generatedLog.append(newString)
            deck.append(newCard)
            
            message = "Generated a \(card[num]) of \(suits[suit])"
        }
    }
    
    func drawingCardFromDeck(){
        if (deck.isEmpty){
            message = "Sorry, deck is empty.\nGenerate a new card to add to your deck."
        }else{
            let length = deck.count
            let idx = Int.random(in: 0...length-1)
            let myCard = deck[idx]
            message = "You drew a \(card[myCard.playingCard]) of \(suits[myCard.playCardSuit])"
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
