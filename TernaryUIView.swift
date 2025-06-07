//
//  TernaryUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/5.
//

import SwiftUI

struct TernaryUIView: View {
    
    @State var isStartingState:Bool = false
    
    var body: some View {

        VStack(
            spacing: 20,
            content: {
                Button("Button:\(isStartingState.description)") {
                    isStartingState.toggle()
                }
                
                
                Rectangle()
                    .fill(isStartingState ? .red: .blue)
                    .frame(width: 100, height: 100)
            }
        )
    }
}

#Preview {
    TernaryUIView()
}
