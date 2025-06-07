//
//  ButtonUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/5.
//

import SwiftUI

struct ButtonUIView: View {
    @State var title: String = "This is my title"

    var body: some View {
        VStack {
            Text(title)
            Button("Press me!") {
                self.title = "Button was Pressed"
            }
            .accentColor(.red)

            Button(
                action: {
                    self.title = "Button #2"
                },
                label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color.white)
                        .padding()
                        .background(
                            Color.blue
                                .cornerRadius(10)
                                .shadow(radius: 10)
                        )
                }
            )

            Button(
                action: {
                    self.title = "Button #3"
                },
                label: {
                    Circle()
                        .fill(.white)
                        .frame(width: 75, height: 75)
                        .shadow(radius: 10)
                        .overlay(content: {
                            Image(systemName: "heart.fill")
                                .font(.largeTitle)
                                .foregroundStyle(Color.purple)
                        })
                }
            )

            Button(
                action: {
                    self.title = "Buttone #5"
                },
                label: {
                    Text("Finish".uppercased())
                        .font(.caption)
                        .foregroundColor(Color.gray)

                        .padding()
                        .padding(.horizontal, 10)
                        .background(
                            Capsule()
                                .stroke(Color.gray, lineWidth: 2.0)
                                
                        )
                }
            )
        }
    }
}

#Preview {
    ButtonUIView()
}
