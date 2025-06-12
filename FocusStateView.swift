//
//  FocusStateView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/10.
//

import SwiftUI

struct FocusStateView: View {
    
    @State private var userName :String = ""
    @FocusState private var usernameInFocus : Bool
    
    var body: some View {
        VStack(spacing: 30) {
            TextField("Add your name here...", text: $userName)
                .focused($usernameInFocus)
                .padding(.leading)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.gray.brightness(0.3))
                .cornerRadius(10)
            
            Button("Toggle focus state") {
                usernameInFocus.toggle()
            }
        }
        .padding(40)
        .onAppear() {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                usernameInFocus.toggle()
            })
        }
    }
}

#Preview {
    FocusStateView()
}
