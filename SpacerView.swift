//
//  SpacerView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/3.
//

import SwiftUI

struct SpacerView: View {
    var body: some View {
        VStack {
            HStack(spacing: 0) {
                Image(systemName: "xmark")
                Spacer()
                Image(systemName: "gear")
            }
            .font(.title)
//            .background(.yellow)
            .padding(.horizontal)
//            .background(.blue)
            
            Spacer()
                .frame(width: 10)
                .background(.orange)
        }
    }
}

#Preview {
    SpacerView()
}
