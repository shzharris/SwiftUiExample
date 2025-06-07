//
//  TextFieldUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/7.
//

import SwiftUI

struct TextFieldUIView: View {
    
    @State var textFieldText: String = ""
    @State var dataArray : [String] = []
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                TextField("Type somthing...", text: $textFieldText)
                    .padding()
                    .background(Color.gray.opacity(0.3).cornerRadius(10))
                    .foregroundColor(.red)
                    .font(.headline)
                
                Button {
                    if textIsAppropriate() {
                        saveText()
                    }
                    
                } label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextFiled")
        }

        
    }
    
    func textIsAppropriate() -> Bool {
        
        if textFieldText.count >= 3 {
            return true
        }
        
        return false
        
    }
    
    func saveText() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldUIView()
}
