//
//  AllRecipesView.swift
//  BakEat
//
//  Created by Barbara Beatrice on 01/04/22.
//

import SwiftUI

struct SideBarView: View {
    
    var categoriesArray = ["Popular recipes", "Biscuits", "Cakes", "Cheesecakes", "Muffins & Cupcakes", "Pastries"]
    
    var favoritesArray = ["Recently Added", "Recently baked"]

    
    @State var selectedCategory: String?
    @State var searchText: String = ""
    
    var body: some View {
        List {
            Section (header:
                        Text("All Recipes")
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.teal)
            ) {
                ForEach (categoriesArray, id: \.self) { item in
                    NavigationLink(
                        destination: AllRecipesView(),
                        tag: item,
                        selection: $selectedCategory,
                        label: {
                            Label(item, systemImage: "seal.fill")
                        }
                    )
                }
            }
            
            Section (header:
                        Text("Favorites")
                .font(.system(size: 15, weight: .semibold))
                .foregroundColor(.teal)
            ) {
                ForEach (favoritesArray, id: \.self) { item in
                    NavigationLink(
                        destination: AllRecipesView(),
                        tag: item,
                        selection: $selectedCategory,
                        label: {
                            Label(item, systemImage: "seal.fill")
                        }
                    )
                }
            }
        }
        
#if os(iOS)
//        If the device is an ipad, always show Searchbar in the Sidebar
        .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always))
#else
        .searchable(text: $searchText)
#endif
        .navigationTitle("Bakeat")
        .listStyle(SidebarListStyle())
        .frame(minWidth: 200)
        
    }
    
}


struct SideBarView_Previews: PreviewProvider {
    static var previews: some View {
        SideBarView()
    }
}
