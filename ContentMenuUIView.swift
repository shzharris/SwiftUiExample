//
//  ContentMenuUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/7.
//

import SwiftUI

struct ContentMenuUIView: View {

    @State var backgrounColor: Color = .blue

    var body: some View {

        VStack(
            alignment: .leading,
            spacing: 10.0
        ) {
            Image(systemName: "house.fill")
                .font(.title)

            Text("Swiftui Thinking")
                .font(.headline)

            Text("How to use Content Menu")
                .font(.subheadline)
        }
        .foregroundColor(.white)
        .padding(30)
        .background(backgrounColor.cornerRadius(30))
        .contextMenu(menuItems: {

            Button {
                backgrounColor = .yellow
            } label: {
                Label("Button1", systemImage: "flame.fill")
            }

            Button {
                backgrounColor = .red

            } label: {
                Text("Button 2")
            }

            Button {
                backgrounColor = .yellow

            } label: {
                HStack {
                    Text("Button 3")
                    Image(systemName: "hear.fill")
                }
            }

        })
    }
}

#Preview {
    ContentMenuUIView()
}
