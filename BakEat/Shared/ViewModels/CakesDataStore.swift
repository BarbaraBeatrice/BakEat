//
//  CakesDataStore.swift
//  BakEat
//
//  Created by Barbara Beatrice on 01/04/22.
//

import Foundation

class CakesDataStore: ObservableObject {
    
    @Published var cakesRecipes : [Recipe] = [
        
    Recipe(recipeName: "Chocolate Cake", recipeImage: "chocolateCake", timeDifficulty: "HARD - 2H"),
    Recipe(recipeName: "Red Velvet Cake", recipeImage: "redVelvet", timeDifficulty: "MEDIUM - 40 MIN"),
    Recipe(recipeName: "Carrot Cake", recipeImage: "carrotCake", timeDifficulty: "EASY - 30 MIN"),
    Recipe(recipeName: "Strawberry Cake", recipeImage: "strawberryCake", timeDifficulty: "MEDIUM - 50 MIN"),
    Recipe(recipeName: "Black Forest Cake", recipeImage: "blackForest", timeDifficulty: "HARD - 1H")
    ]
}
