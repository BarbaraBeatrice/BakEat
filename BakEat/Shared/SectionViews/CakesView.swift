//
//  CakesView.swift
//  BakEat
//
//  Created by Barbara Beatrice on 30/03/22.
//

import SwiftUI

struct CakesView: View {
    
    @StateObject var cakeRecipes = CakesDataStore()
    
    let gridItem = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        
        VStack (alignment: .leading) {
            Text ("Cakes")
                .font(.title)
                .bold()
                .foregroundColor(.teal)
                .padding(.leading)
            
            
            ScrollView (.horizontal, showsIndicators: false) {
                LazyHGrid(rows: gridItem, spacing: 20) {
                    ForEach(cakeRecipes.cakesRecipes, id: \.id) { recipe in
                        SmallGridItem(image: recipe.recipeImage, recipeName: recipe.recipeName, recipeInfo: recipe.timeDifficulty)
                    }
                }
            }
            .padding()
        }
    }
}

struct CakesView_Previews: PreviewProvider {
    static var previews: some View {
        CakesView()
    }
}
