//
//  AnimationView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/11.
//

import SwiftUI

struct AnimationView: View {
    
    @State private var animate1:Bool = false
    @State private var animate2:Bool = false
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 40, content: {
                Button("Action 1") {
                    animate1.toggle()
                }
                
                Button("Action 1") {
                    animate2.toggle()
                }
                
                ZStack {
                    Rectangle()
                        .frame(width: 100, height: 100)
                        .frame(maxWidth: .infinity, alignment: animate1 ? .leading : .trailing)
                        .background(Color.green)
                        .frame(maxHeight: .infinity, alignment: animate2 ? .top : .bottom)
                        .background(Color.orange)
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
            })
        }
        
//        .animation(.spring())
        .animation(.spring(), value: animate1)
    }
}

#Preview {
    AnimationView()
}
