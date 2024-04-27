//
//  ContentView.swift
//  aszumny_lab2
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct ContentView: View {
    var emojis1 = ["😄","😍","🤓","😝","😎","😖","🤩","🥺","🤬","🤓","🤩","🤩"]
    @State var cardCount : Int = 2
    
    var body: some View {
        VStack {
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 120))], content: {
                    ForEach(0..<cardCount, id: \.self) { index in
                        CardView(emoji: emojis1[index])
                    }
                }).foregroundColor(.white)

            }
        }
        .padding()
        HStack{
            addCardNumber(by: +2, symbol: "plus.app")
            Spacer()
            Text(String(cardCount))
            removeCardNumber(by: -2, symbol: "minus.square")

        }
    }
    func addCardNumber(by offset: Int, symbol: String) -> some View{
        return Button(action: {cardCount += offset}, label: {
            Image(systemName: symbol)
        }).disabled(cardCount>11)
        .font(.largeTitle)
        .padding()
    }
    func removeCardNumber(by offset: Int, symbol: String) -> some View{
        return Button(action: {cardCount += offset}, label: {
            Image(systemName: symbol)
        }).disabled(cardCount<2)
        .font(.largeTitle)
        .padding()
    }
}

#Preview {
    ContentView()
}
