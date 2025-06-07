//
//  StateBackUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/5.
//  下面按钮没有用 @todo

import SwiftUI

struct StateBackUIView: View {
    var body: some View {

        @State var backgroundColorD: Color = Color.green
        @State var myTitle: String = "my title2"
        @State var count: Int = 1

        ZStack {
            //background
            backgroundColorD
                .edgesIgnoringSafeArea(.all)

            VStack(spacing: 20) {
                Text(myTitle)
                    .font(.title)
                Text("Title \(count)")
                    .font(.headline)
                    .underline()

                HStack(spacing: 20) {

                    Button(
                        myTitle,
                        action: {
                            myTitle = "jjj"
                            count += 1
                            backgroundColorD = Color.red
                        }
                    )

                    Button(
                        myTitle,
                        action: {
                            myTitle = "ddd"
                            count -= 1

                            backgroundColorD = Color.purple
                        }
                    )
                }
            }
            .foregroundColor(.white)

        }
    }
}

#Preview {
    StateBackUIView()
}
