//
//  ContentView.swift
//  BakEat (watchOS) WatchKit Extension
//
//  Created by Barbara Beatrice on 01/04/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var connectivityManager = WatchConnectivityManager.shared
    
    var body: some View {
        VStack (alignment: .center){
            
            Text("Select a recipe from the iPhone app to start")
                .multilineTextAlignment(.center)
                .padding()
            Image("cupcake")
                .resizable()
                .frame(width: 50, height: 50)
                .padding()
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
