//
//  StepperUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct StepperUIView: View {
    
    @State var stepperValue : Int = 10
    
    @State var widthIncrement: CGFloat = 0
    
    var body: some View {
        
        VStack {
            Stepper("Stepper:\(stepperValue)", value: $stepperValue)
                .padding(50)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + widthIncrement, height: 100)
            
            Stepper("Stepper2 : ",onIncrement: {
                incrementWidth(amount: 10)
                
            }, onDecrement: {
                incrementWidth(amount: -10)
            })
                .padding(50)
        }
    }
    
    func incrementWidth(amount:CGFloat) {
        withAnimation {
            widthIncrement += amount
        }
        
    }
}

#Preview {
    StepperUIView()
}
