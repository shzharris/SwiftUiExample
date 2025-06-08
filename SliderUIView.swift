//
//  SliderUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct SliderUIView: View {

    @State var sliderValue: Double = 3
    @State var color: Color = .red

    var body: some View {

        VStack {
            Text("Rating: \(sliderValue)")
            Text(String(format: "%.0f", sliderValue))
            //            Slider(value: $sliderValue).accentColor(.red)
//            Slider(value: $sliderValue, in: 1...5, step: 0.5)
            
            Slider(
                value: $sliderValue,
                in:1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel: Text("1").font(.largeTitle).foregroundColor(.blue),
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                }
            )
            .accentColor(.red)

        }

    }
}

#Preview {
    SliderUIView()
}
