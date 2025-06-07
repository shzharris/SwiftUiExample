//
//  AnimationCurvesUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/5.
//

import SwiftUI

struct AnimationCurvesUIView: View {
    
    @State var isAnimating:Bool = false
    let timing:Double = 5.0
    
    var body: some View {
        
        VStack {
            Button("Button") {
                isAnimating.toggle()
            }
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: isAnimating ? 300 : 50, height: 100)
                .animation(.spring(
                    response: 0.7,
                    dampingFraction:0.4,
                    blendDuration: 1.0
                ))
//                .animation(.spring())
//                .animation(Animation.linear(duration: timing))
            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 300 : 50, height: 100)
//                .animation(Animation.easeIn(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 300 : 50, height: 100)
//                .animation(Animation.easeInOut(duration: timing))
//            
//            RoundedRectangle(cornerRadius: 20)
//                .frame(width: isAnimating ? 300 : 50, height: 100)
//                .animation(Animation.easeOut(duration: timing))
        }
    }
}

#Preview {
    AnimationCurvesUIView()
}
