//
//  StepsTabView.swift
//  BakEat (watchOS) WatchKit Extension
//
//  Created by Barbara Beatrice on 01/04/22.
//

import SwiftUI

struct StepsTabView: View {
    var body: some View {
        TabView {
            
            StepView(stepNumber: "1", stepDescription: "First, mix together the dry and wet ingredients in two separate bowls and then combine them.", isTimerShowing: false)
            StepView(stepNumber: "2", stepDescription: "Pour the batter into a baking pan lined with parchment paper.", isTimerShowing: false)
            StepView(stepNumber: "3", stepDescription: "Bake at 170° for 40-45 minutes. Start the timer once you've put the pan into the oven", isTimerShowing: true)
    }
        .tabViewStyle(.page)
        .padding()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        StepsTabView()
    }
}
