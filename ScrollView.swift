//
//  ScrollView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/4.
//

import SwiftUI

struct ScrollerView: View {
    var body: some View {
        ScrollView{
            LazyVStack {
                ForEach(0..<50) { index in
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        LazyHStack {
                            ForEach(0..<10) { index2 in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(.white)
                                    .frame(width: 200, height: 150, alignment: .center)
                                    .shadow(radius: 10)
                                    .padding()
                                
                            }
                        }
                    })
                    
                }
                
                
            }
        }
        
    }
}

#Preview {
    ScrollerView()
}
