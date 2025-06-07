//
//  FrameUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/3.
//

import SwiftUI

struct FrameUIView: View {
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 40))
            .foregroundColor(Color.white)

            .background(
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [Color.red, Color.blue],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 100, height: 100)
                    .shadow(color: .black, radius: 10, x: 0.0, y: 10)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(
                                Text("5")
                                    .font(.headline)
                                    .foregroundColor(.white)
                            )
                            .shadow(color: .gray, radius:10, x: 0.0, y: 10)
                        ,
                        alignment: .bottomTrailing
                    )
            )
    }
}

#Preview {
    FrameUIView()
}
