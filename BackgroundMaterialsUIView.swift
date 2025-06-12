//
//  BackgroundMaterialsUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/10.
//

import SwiftUI

struct BackgroundMaterialsUIView: View {
    var body: some View {
        
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                    
                Spacer()
                Text("hi")
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.thinMaterial)
            .cornerRadius(30)
        }
        .ignoresSafeArea()
        .background(
            Image(systemName: "heart.fill").resizable().scaledToFit()
        )
    }
}

#Preview {
    BackgroundMaterialsUIView()
}
