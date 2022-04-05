//
//  CookiesView.swift
//  BakEat
//
//  Created by Barbara Beatrice on 30/03/22.
//

import SwiftUI

struct CookiesView: View {
    
    
    @StateObject var biscuitsRecipes = CookiesDataStore()
    
    let gridItem = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        VStack (alignment: .leading) {
            Text ("Biscuits")
                .font(.title)
                .bold()
                .foregroundColor(.teal)
                .padding(.leading)
            
            ScrollView (.horizontal, showsIndicators: false) {
                LazyHGrid(rows: gridItem, spacing: 20) {
                    ForEach(biscuitsRecipes.biscuitsRecipes, id: \.id) { recipe in
                        NavigationLink(destination: RecipeDetailView(recipeData: recipe)){
                        SmallGridItem(image: recipe.recipeImage, recipeName: recipe.recipeName, recipeInfo: recipe.timeDifficulty)
                    }
                    }
                }
            }
            .padding()
        }
    }
}

struct BiscuitsView_Previews: PreviewProvider {
    static var previews: some View {
        CookiesView()
    }
}
