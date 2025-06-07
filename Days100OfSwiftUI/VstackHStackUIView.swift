//
//  VstackHStackUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/3.
//

import SwiftUI

struct VstackHStackUIView: View {
    // Vstack
    // Hstack
    var body: some View {
        VStack(alignment:.center, spacing: 50) {
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .frame(width: 100, height: 100)
                )
            
        }
    }
}

#Preview {
    VstackHStackUIView()
}
