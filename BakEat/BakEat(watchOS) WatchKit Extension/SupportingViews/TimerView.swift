//
//  TimerView.swift
//  RecipesMultiplatform(watchOS) WatchKit Extension
//
//  Created by Barbara Beatrice on 31/03/22.
//

import SwiftUI

struct TimerView: View {
    
    @State private var timerCount = 10
    @State private var timer: Timer?
    @State var showTimer: Bool = false
    
    //    let formatter = DateComponentsFormatter()
    //
    //    for timeInterval in timeIntervals {
    //        print(formatter.string(from: timeInterval)!)
    //    }
    
    var body: some View {
        Button  (action: {
            timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) {time in
                    if timerCount > 0 {
                        timerCount -= 1
                    }
                showTimer.toggle()
            }
            
        }, label: {
            HStack {
                Image (systemName: "timer")
                if showTimer && timerCount != 0 {
                    Text ("\(timerCount)")
                } else {
                    Text ("Start timer")
                }
            }
        })
        .foregroundColor(.black)
        .background(.teal)
        .cornerRadius(12)
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
