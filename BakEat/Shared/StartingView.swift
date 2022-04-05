//
//  StartingView.swift
//  Shared
//
//  Created by Barbara Beatrice on 30/03/22.
//

import SwiftUI


struct StartingView: View {
    
//    State var that stores the searched text
    @State private var searchText = ""
    
//    Check the size class in landscape mode (to know if the device is an iphone or an ipad)
#if os(iOS)
    @Environment(\.horizontalSizeClass) var horizontalSizeClass: UserInterfaceSizeClass?
#endif
    
    
    var body: some View {
        
#if os(iOS)
//        If iphone, show TabView
        if horizontalSizeClass == .compact {
            NavigationView {
                TabBarView()
            }
            .searchable(text: $searchText)
            
        } else {
//        If ipad, show the sidebar
            NavigationView {
                SideBarView()
                AllRecipesView()
            }
        }
        
//        If the device is a mac, show the sidebar
#elseif os(macOS)
        NavigationView {
            SideBarView()
            AllRecipesView()
        }
        
//        If the device is an Apple tv, show the tabview (with a searchbar)
#elseif os(tvOS)
        NavigationView {
        TabBarView()
        }
        .searchable(text: $searchText)
#endif
    }
}

struct StartingView_Previews: PreviewProvider {
    static var previews: some View {
    StartingView()
    }
}
