//
//  ContentUnavailableUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/12.
//

import SwiftUI

struct ContentUnavailableUIView: View {
    var body: some View {

        if #available(iOS 17.0, *) {
            //            ContentUnavailableView.search(text: "abc")

            ContentUnavailableView(
                "No Internet Connection",
                systemImage: "wifi.slash",
                description: Text(
                    "Please connect to the internet and try again?"
                )
            )
        }

    }
}

#Preview {
    ContentUnavailableUIView()
}
