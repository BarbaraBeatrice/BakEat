//
//  FavoriteButtonView.swift
//  BakEat
//
//  Created by Barbara Beatrice on 01/04/22.
//

import SwiftUI

struct FavoriteButtonView: View {
    @State var isFavorite: Bool = false
    var circleSize : CGFloat
    var body: some View {
        Button (action: {
            isFavorite.toggle()
            print(isFavorite)
        }, label: {
            ZStack {
                Circle()
                    .foregroundColor(.white)
                    .frame(width: circleSize, height: circleSize)
                Image(systemName: isFavorite ? "heart.fill" : "heart")
                    .foregroundColor(.teal)
            }
        })
        .buttonStyle(PlainButtonStyle())
        
    }
}

struct FavoriteButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButtonView(circleSize: 30)
    }
}

