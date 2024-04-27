//
//  CardView.swift
//  aszumny_lab2
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct CardView: View {
    @State var isHidden: Bool = true
    @State var emoji: String
    let base = RoundedRectangle(cornerRadius: 12)
    var body: some View {
        ZStack{
            Group{
                base.foregroundColor(.white)
                base.strokeBorder(lineWidth: 2)
                Text(emoji).font(.largeTitle)
            }
            base.fill().opacity(isHidden ? 0 : 1)
        }
        .foregroundColor(.blue)
        .padding()
        .onTapGesture {
            isHidden.toggle()
        }

    }
}

//#Preview {
//    CardView()
//}
