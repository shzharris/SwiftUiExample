//
//  BadgeView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/10.
//

import SwiftUI

struct BadgeView: View {
    var body: some View {
        List {
            Text("Hello ,world")
                .badge("hello")
            Text("Hello ,world")
            Text("Hello ,world")
            Text("Hello ,world")
        }
        
//        TabView {
//            Color.red
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//                .badge(2)
//            
//            Color.blue
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//            
//            Color.green
//                .tabItem {
//                    Image(systemName: "heart.fill")
//                    Text("Hello")
//                }
//        }
    }
}

#Preview {
    BadgeView()
}
