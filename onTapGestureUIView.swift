//
//  onTapGestureUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct onTapGestureUIView: View {
    
    @State var rectangleColor:Color = .red
    
    var body: some View {
        
        VStack(spacing: 40, content: {
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(height: 200)
                .foregroundColor(rectangleColor)
            
            Button(action: {
                rectangleColor = .blue
            }, label: {
                Text("Button")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .cornerRadius(25)
            })
            
            Text("Tap Gesture")
                .font(.headline)
                .foregroundColor(.white)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .cornerRadius(25)
//                .onTapGesture {
//                    rectangleColor = .green
//
//                }
                .onTapGesture(count: 2, perform: {
                    rectangleColor = .green
                })
            
            Spacer()
        })
        .padding(40)
        
    }
}

#Preview {
    onTapGestureUIView()
}
