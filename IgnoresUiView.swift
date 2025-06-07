//
//  IgnoresUiView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/4.
//

import SwiftUI

struct IgnoresUiView: View {
    var body: some View {
        ScrollView {
            Text("Title goes here")
                .font(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)

            ForEach(0..<10) { index in
                RoundedRectangle(cornerRadius: 25.0)
                    .fill(.white)
                    .frame(height: 150)
                    .shadow(radius: 10)
                    .padding(20)

            }
//            .background(Color.blue)
            .background(
                Color.red
                    .edgesIgnoringSafeArea(.all)
            )
        }

        //        ZStack {
        //            // background
        //            Color.blue
        //                .edgesIgnoringSafeArea(.all)
        //
        //            //foreground
        //
        //            VStack {
        //                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        //
        //                Spacer()
        //            }
        //            .frame(maxWidth: .infinity,maxHeight: .infinity)
        ////            .background(Color.red)
        //        }

    }
}

#Preview {
    IgnoresUiView()
}
