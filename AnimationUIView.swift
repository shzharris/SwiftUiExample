//
//  AnimationUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/5.
//

import SwiftUI

struct AnimationUIView: View {

    @State var isAnimation: Bool = false

    var body: some View {
        VStack {
            Button("Button") {
                isAnimation.toggle()
            }

            Spacer()
            RoundedRectangle(cornerRadius: isAnimation ? 10 : 50)
                .fill(isAnimation ? .green : .red)
                .frame(
                    width: isAnimation ? 100 : 300,
                    height: isAnimation ? 100 : 300
                )
                .rotationEffect(Angle(degrees: isAnimation ? 360 : 0))
                .offset(y: isAnimation ? 300 : 0)
                .animation(Animation
                    .default
                    .delay(0.5)
                )
            
            Spacer()
        }

    }
}

#Preview {
    AnimationUIView()
}
