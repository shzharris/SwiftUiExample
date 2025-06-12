//
//  SafeIgnoreAreaView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/11.
//

import SwiftUI

struct SafeIgnoreAreaView: View {
    var body: some View {
        
        NavigationStack {
            List(0..<10) {_ in
                Rectangle()
                    .frame(height: 300)
            
            }
            .navigationTitle("Safe Area Insets")
            .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                Text("hi")
//                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.yellow)
                    .clipShape(Circle())
                    .padding()
            }
        }
        
        
    }
}

#Preview {
    SafeIgnoreAreaView()
}
