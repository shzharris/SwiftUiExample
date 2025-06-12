//
//  ViewThatFitsView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/11.
//

import SwiftUI

struct ViewThatFitsView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()

            ViewThatFits {
                Text(
                    "this is some text that i would like to display to the user!"
                )
                Text("this is some text that")
                Text("this is some Hello world .. ")
            }
        }
        .frame(height: 300)
        .padding(10)
        .font(.headline)
    }
}

#Preview {
    ViewThatFitsView()
}
