//
//  StepView.swift
//  RecipesMultiplatform(watchOS) WatchKit Extension
//
//  Created by Barbara Beatrice on 31/03/22.
//

import SwiftUI

struct StepView: View {
    var stepNumber: String
    var stepDescription: String
    var isTimerShowing: Bool
    
    var body: some View {
        ScrollView (showsIndicators: false){
            VStack  (alignment: .leading, spacing: 20){
                Text ("Step " + stepNumber)
                    .bold()
                Text (stepDescription)
                
                if isTimerShowing {
                    TimerView()
                }
            }
            .padding()
        }
    }
}

struct StepView_Previews: PreviewProvider {
    static var previews: some View {
        StepView(stepNumber: "1", stepDescription: "nrfckejbxoleikrnffclsknxln", isTimerShowing: true)
    }
}
