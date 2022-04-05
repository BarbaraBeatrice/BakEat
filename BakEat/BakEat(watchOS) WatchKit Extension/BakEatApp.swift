//
//  BakEatApp.swift
//  BakEat(watchOS) WatchKit Extension
//
//  Created by Barbara Beatrice on 05/04/22.
//

import SwiftUI

@main
struct BakEatApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
