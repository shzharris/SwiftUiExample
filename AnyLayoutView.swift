//
//  AnyLayoutView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/11.
//

import SwiftUI

struct CustomButtonStyle : ButtonStyle {
    
    var backgroundColor:Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.headline)
            .foregroundColor(.white)
            .padding(.horizontal, 32)
            .padding(.vertical, 10)
            .background(backgroundColor)
            .cornerRadius(8)
            
    }
}

struct AnyLayoutView: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSize
    @Environment(\.verticalSizeClass) private var verticalSize
    
    var body: some View {
        VStack(spacing: 12, content: {
            
            
            
            
            Text("Horizontal: \(horizontalSize.debugDescription)")
            Text("Vertical: \(verticalSize.debugDescription)")
        
            
//            if horizontalSize == .compact {
//                VStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            } else {
//                HStack {
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//            }
            
            let layout :AnyLayout = horizontalSize == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
                
                Button("Stop") {
                    
                }
                .buttonStyle(CustomButtonStyle(backgroundColor:Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1))))
            }
        })
        
        
    }
    
    
}

#Preview {
    AnyLayoutView()
}
