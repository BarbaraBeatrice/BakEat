//
//  StartRecipe (watchOS).swift
//  BakEat (watchOS) WatchKit Extension
//
//  Created by Barbara Beatrice on 01/04/22.
//

import SwiftUI

struct StartRecipeView: View {
    var body: some View {
        ScrollView {
            VStack (alignment: .leading){
                Text ("Brownies")
                    .font(.title2)
                    .foregroundColor(.teal)

                NavigationLink (destination: (IngredientsView()), label: {
                    HStack {
                        Image (systemName: "checklist")
                        Text ("Ingredients")
                    }
                })
                .foregroundColor(.black)
                .background(.teal)
                .cornerRadius(12)
                .padding()
//                .foregroundColor(.teal)
                
                NavigationLink (destination: (StepsTabView()), label: {
                    HStack {
                        Image (systemName: "arrowtriangle.right.fill")
                        Text ("Start baking")
                    }
                })
                .foregroundColor(.black)
                .background(.teal)
                .cornerRadius(12)
                .padding()
//                .foregroundColor(.teal)
                
            }
            .padding()
        }
    }
}

struct StartRecipeView__Previews: PreviewProvider {
    static var previews: some View {
        StartRecipeView()
    }
}
