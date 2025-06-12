//
//  GroupView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/11.
//

import SwiftUI

struct GroupView: View {
    var body: some View {
        
        VStack(spacing: 50) {
            Text("Hello world!")
            
//            VStack(spacing: 50, content: {
//                Text("Hello world!")
//                Text("Hello world!")
//            })
            Group{
                Text("Hello world!")
                Text("Hello world!")
            }
            .foregroundColor(.green)
            .font(.headline)
        }
        .foregroundColor(.red)
        .font(.headline)
    }
}

#Preview {
    GroupView()
}
