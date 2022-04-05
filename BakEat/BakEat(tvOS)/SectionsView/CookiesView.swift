//
//  CookiesView.swift
//  BakEat(tvOS)
//
//  Created by Barbara Beatrice on 01/04/22.
//

import SwiftUI

struct CookiesView: View {
    
    
    @StateObject var biscuitsRecipes = CookiesDataStore()
    
    let gridItem = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        VStack (alignment: .leading) {
            Text ("Cookies")
                .font(.title)
                .bold()
                .foregroundColor(.teal)
                .padding(.leading)
            
            
            ScrollView (.horizontal, showsIndicators: false) {
                LazyHGrid(rows: gridItem, spacing: 20) {
                    ForEach(biscuitsRecipes.biscuitsRecipes, id: \.id) { recipe in
                        VideoThumbnailView(image: recipe.recipeImage, recipeName: recipe.recipeName, recipeInfo: recipe.timeDifficulty)
                    }
                }
            }
            .padding()
        }
    }
}

struct CookiesView_Previews: PreviewProvider {
    static var previews: some View {
        CookiesView()
    }
}
