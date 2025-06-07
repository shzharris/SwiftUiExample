//
//  ForEachView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/4.
//

import SwiftUI

struct ForEachView: View {

    let data: [String] = [
        "Hi", "Hello", "Hey Everyone",
    ]
    let myString: String = "Hello"

    var body: some View {
        VStack {
            ForEach(data.indices) { index in
                Text("\(data[index]): \(index)")
            }
            ForEach(0..<100) { index in
                Circle()
                    .frame(height:50)
                
            }
        }

    }
}

#Preview {
    ForEachView()
}
