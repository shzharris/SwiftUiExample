//
//  ConditionalUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/5.
//

import SwiftUI

struct ConditionalUIView: View {
    
    @State var showCircle:Bool = false
    @State var showRectangle:Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Button("Circle Button: \(showCircle.description)") {
                showCircle.toggle()
            }
            Button("Rectangle Button: \(showRectangle.description)") {
                showRectangle.toggle()
            }
            
            if showCircle {
                Circle()
                    .frame(width: 100, height: 100)
            }
            if showRectangle {
                Rectangle()
                    .frame(width: 100, height: 100)
            }
            
            if showCircle && showRectangle {
                RoundedRectangle(cornerRadius: 25.0)
                    .frame(width: 250, height: 250)
            }
            
            Spacer()
            
                
        }
    }
}

#Preview {
    ConditionalUIView()
}
