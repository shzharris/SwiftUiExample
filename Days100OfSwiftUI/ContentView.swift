//
//  ContentView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/5/26.
//

import SwiftUI

func sum(a: Int, b: Int) -> Int {
    return a + b
}

let a = { (x: Int) -> Int in
    return x + 1
}

func sumTwo(a: Int) -> Int {
    return a + 1
}

func mySelect() -> String {
    return ["🍎", "🍌", "🌰", "🍐"].randomElement()!
}

struct ContentView: View {
    @State var todayEat = mySelect()

    var body: some View {

        VStack {
            Spacer()
            Text("\(todayEat)")
                .font(.system(size: 150))
                .multilineTextAlignment(.center)
                .padding()

            Spacer()

            Button(

                action: {},
                label: {
                    Text("hello")

                }
            )

            Button("今天吃啥？") {
                todayEat = mySelect()

            }
            .padding()
            .background(.teal)
            .font(.system(size: 20))
            .foregroundColor(.white)
            .cornerRadius(30)
            Spacer()

        }
        .padding()

    }
}

#Preview {
    ContentView()
}
