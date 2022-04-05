//
//  RecipesModel.swift
//  BakEat
//
//  Created by Barbara Beatrice on 30/03/22.
//

import Foundation

struct Recipe: Identifiable {
    var id = UUID()
    var recipeName: String
    var recipeImage: String
    var timeDifficulty: String
}
