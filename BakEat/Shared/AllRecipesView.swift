//
//  AllRecipesView.swift
//  BakEat
//
//  Created by Barbara Beatrice on 01/04/22.
//

import SwiftUI

struct AllRecipesView: View {
    
    var body: some View {
        ZStack {
//            Vertical scrollview that includes every dessert category view
            ScrollView (showsIndicators: false){
                Divider()
                PopularDessertsView()
                Divider()
                CakesView()
                Divider()
                CookiesView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        AllRecipesView()
    }
}
