//
//  InitEnumView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/4.
//

import SwiftUI

struct InitEnumView: View {
    
    let backgroundColor:Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "orange"
            self.backgroundColor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)

        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack {
        InitEnumView(count: 55, fruit: .apple)
        InitEnumView(count: 100, fruit: .orange)
    }
}
