//
//  TabBarView.swift
//  Bakeat
//
//  Created by Barbara Beatrice on 01/04/22.
//

import SwiftUI

struct TabBarView: View {
    
    var body: some View {
#if os(macOS)
//        Set a minimum frame for the macOS version
        return view.frame(minWidth: 1420, minHeight: 1080)
#else
        return view
#endif
    }
    
//    Private var that contains the tabview
    private var view: some View {
        TabView {
            AllRecipesView()
                .tabItem {
                    Label("Recipes", systemImage: "fork.knife")
                }
                .tag(0)
            
            AllRecipesView()
                .tabItem {
                    Label("Favorites", systemImage: "heart.fill")
                }
                .tag(1)
        }
        .navigationTitle("Bakeat")
        
//        If the device is not macOS or tvOS, show the navigation bar title
        #if !os(macOS) && !os(tvOS)
        .navigationBarTitleDisplayMode(.automatic)
        #endif
    }
    
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
