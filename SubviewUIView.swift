//
//  SubviewUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/5.
//

import SwiftUI

struct SubviewUIView: View {
    var body: some View {
        ZStack {
            Color.yellow.edgesIgnoringSafeArea(.all)
            
            cotententLayer
            
        }
    }
    
    var cotententLayer:some View {
        HStack {
            MyItem(title: "Hello", count: 1, color: .red)
            MyItem(title: "World", count: 2, color: .purple)

        }
    }
    
}

#Preview {
    SubviewUIView()
}

struct MyItem: View {
    let title:String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            
            Text(title)
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}
