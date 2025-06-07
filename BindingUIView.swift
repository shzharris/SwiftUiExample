//
//  BindingUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/5.
//

import SwiftUI

struct BindingUIView: View {
    @State var backgroundD: Color = Color.green
    @State var title :String = "Title"

    var body: some View {
        ZStack {
            backgroundD.edgesIgnoringSafeArea(.all)

            VStack {
                Text(title).foregroundColor(.white).font(.largeTitle)
                ExtractedView(backgroundChildD: $backgroundD, title:$title)

            }
            
        }
    }
}

#Preview {
    BindingUIView()
}

struct ExtractedView: View {

    @Binding var backgroundChildD: Color
    @State var buttonColor:Color = .red
    @Binding var title:String
    
    var body: some View {
        Button(
            action: {
                backgroundChildD = Color.orange
                buttonColor = Color.green
                title = "Hello World"
            },
            label: {
                Text("Button")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(buttonColor)
                    .cornerRadius(10)
            }
        )
    }
}
