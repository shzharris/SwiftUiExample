//
//  FunctionsUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/5.
//

import SwiftUI

struct FunctionsUIView: View {
    
    @State var backgroundColorD: Color = .pink
    
    var body: some View {
        ZStack {
            backgroundColorD.edgesIgnoringSafeArea(.all)

            contentLayer
        }
    }
    
    var contentLayer : some View {
        VStack {
            Text("Title").font(.largeTitle)

            Button(
                action: {
                    buttonPressed()
                },
                label: {
                    Text("Press me".uppercased()).font(.headline)
                        .foregroundColor(.white).padding().background(
                            Color.black
                        ).cornerRadius(10)
                }
            )
        }
    }
    
    func buttonPressed() {
        backgroundColorD = .yellow
    }
}

#Preview {
    FunctionsUIView()
}
