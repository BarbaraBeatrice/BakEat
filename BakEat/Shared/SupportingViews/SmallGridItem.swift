//
//  SmallGridItemView.swift
//  BakEat
//
//  Created by Barbara Beatrice on 30/03/22.
//

import SwiftUI

struct SmallGridItem: View {
    
    var image: String
    var recipeName: String
    var recipeInfo: String
    @State var isFavourite: Bool = false
    
    var body: some View {
        ZStack (alignment: .top){
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 200, height: 260)
                .background(.teal)
                .foregroundColor(.clear)
                .opacity(0.5)
            
            Image(image)
                .resizable()
                .frame(width: 200, height: 200)
                .clipped()
            
            HStack {
            VStack (alignment: .leading, spacing: 5){
                Text(recipeName)
                    .font(.system(size: 16))
                    .bold()
                    .lineLimit(1)
                
                
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
        .frame(width: 200, height: 260, alignment: .center)
            
    }
}

struct GridItemView_Previews: PreviewProvider {
    static var previews: some View {
        SmallGridItem(image: "brownies", recipeName: "Oatmeal Cookies", recipeInfo: "EASY - 30")
    }
}


