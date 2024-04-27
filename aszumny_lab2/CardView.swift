//
//  CardView.swift
//  aszumny_lab2
//
//  Created by student on 27/04/2024.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
            RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2)
            Text(":)").font(.largeTitle)
        }
        .foregroundColor(.blue)
        .imageScale(.small)
        .padding()
    }
}

#Preview {
    CardView()
}
