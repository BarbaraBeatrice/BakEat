//
//  SwiftUIView.swift
//  BakEat
//
//  Created by Barbara Beatrice on 04/04/22.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipeData : Recipe
    
    var body: some View {
        VStack (alignment: .leading) {
            Text (recipeData.recipeName)
                .font(.largeTitle)
                .foregroundColor(.teal)
            
//        Button("Hello World!", action: {
//          WatchConnectivityManager.shared.send("Hello World!\n\(Date().ISO8601Format())")
//        })
        }
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipeData: Recipe(recipeName: "Brownies", recipeImage: "brownies", timeDifficulty: "EASY - 30 MIN"))
    }
}
