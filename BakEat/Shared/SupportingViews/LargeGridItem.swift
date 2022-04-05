//
//  LargeGridItem.swift
//  BakEat
//
//  Created by Barbara Beatrice on 31/03/22.
//

import SwiftUI

struct LargeGridItem: View {
    
    var image: String
    var recipeName: String
    var recipeInfo: String

    
    var body: some View {
            ZStack (alignment: .top){
                RoundedRectangle(cornerRadius: 20)
                    .frame(width: 350, height: 260)
                    .background(.teal)
                    .foregroundColor(.clear)
                    .opacity(0.5)
                
                Image(image)
                    .resizable()
                    .frame(width: 350, height: 200)
                    .clipped()
                
                HStack {
                VStack (alignment: .leading, spacing: 5){
                    Text(recipeName)
                        .font(.title3)
                        .bold()
                    Text (recipeInfo)
                        .font(.system(size: 12, weight: .semibold))
                        .foregroundColor(.secondary)
                }
                    Spacer()
                    FavoriteButtonView(circleSize: 30)
                }
                .padding()
                .offset(x: 0, y: 190)
                
            }
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .frame(width: 350, height: 260, alignment: .center)
            
    }
}

struct LargeGridItem_Previews: PreviewProvider {
    static var previews: some View {
        LargeGridItem(image: "brownies", recipeName: "Red Velvet Cake", recipeInfo: "EASY - 30")
    }
}

