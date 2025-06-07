//
//  TextEditorUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/7.
//

import SwiftUI

struct TextEditorUIView: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText:[String] = []

    var body: some View {
        
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundColor(.red)
//                    .colorMultiply(.red)
                Button(action: {
                    saveTextFunc()
                }, label: {
                    Text("Share".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                               
                Spacer()

            }
            .padding()
            .background(Color.green)
            .navigationTitle("Text Editor")
        }
        
        
    }
    
    func saveTextFunc() {
        savedText.append(textEditorText)
        textEditorText = ""
    }
}

#Preview {
    TextEditorUIView()
}
