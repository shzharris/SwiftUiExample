//
//  PaddingUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/3.
//

import SwiftUI

struct PaddingUIView: View {
    var body: some View {
        
        
        VStack(alignment: .leading) {
            Text("Hello, World! ")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
            Text("HHHHHHHHHHHHHHHHHHHddddddddddddddddddddddHHHHHHHHHHHHHHHHHHHdddddddddddddddddddddd")
                
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: Color.black.opacity(0.3),
                    radius: 10,
                    x: 0.0,
                    y: 10
                )
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingUIView()
}
