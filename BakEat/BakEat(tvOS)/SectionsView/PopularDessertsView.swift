//
//  PopularDessertsView(tvOS).swift
//  BakEat(tvOS)
//
//  Created by Barbara Beatrice on 01/04/22.
//

import SwiftUI

struct PopularDessertsView: View {
    
    @StateObject var recipes = PopularRecipesDataStore()
    
    let gridItem = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    var body: some View {
        VStack (alignment: .leading) {
            Spacer()
            Text ("Popular desserts")
                .font(.title)
                .bold()
                .foregroundColor(.teal)
                .padding(.leading)
            
            ScrollView (.horizontal, showsIndicators: false) {
                LazyHGrid(rows: gridItem, spacing: 20) {
                    ForEach(recipes.recipes, id: \.id) { recipe in
                       
                        
                        VideoThumbnailView(image: recipe.recipeImage, recipeName: recipe.recipeName, recipeInfo: recipe.timeDifficulty)
                        
                    }
                }
            }
            .padding()
        }
    }
}

struct PopularDessertsView_tvOS__Previews: PreviewProvider {
    static var previews: some View {
        PopularDessertsView()
    }
}

