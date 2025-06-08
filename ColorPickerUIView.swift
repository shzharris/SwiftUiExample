//
//  ColorPickerUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct ColorPickerUIView: View {
    
    @State var backgroundColor: Color = .green
    var body: some View {
        
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a color", selection: $backgroundColor, supportsOpacity: true)
                .padding()
                .background(Color.black)
                .cornerRadius(10)
                .foregroundColor(.white)
                .font(.headline)
                .padding(50)
        }
        
    }
}

#Preview {
    ColorPickerUIView()
}
