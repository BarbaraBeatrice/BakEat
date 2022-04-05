//
//  RecipesDataStore.swift
//  BakEat
//
//  Created by Barbara Beatrice on 30/03/22.
//

import Foundation

class PopularRecipesDataStore: ObservableObject {
    
    @Published var recipes : [Recipe] = [
        
    Recipe(recipeName: "Brownies", recipeImage: "brownies", timeDifficulty: "EASY - 30 MIN"),
    Recipe(recipeName: "Cheesecake", recipeImage: "cheesecake", timeDifficulty: "MEDIUM - 1H 30"),
    Recipe(recipeName: "Tiramisu", recipeImage: "tiramisu", timeDifficulty: "EASY - 30 MIN"),
    Recipe(recipeName: "Waffles", recipeImage: "waffles", timeDifficulty: "EASY - 15 MIN")
    ]
}
