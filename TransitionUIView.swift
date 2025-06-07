//
//  TransitionUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/5.
//

import SwiftUI

struct TransitionUIView: View {
    
    @State var showViews:Bool = false
    
    var body: some View {
        ZStack(alignment:.bottom) {
            
            VStack {
                Button("Button") {
                    showViews.toggle()
                }
                Spacer()
            }
            
            if showViews {
                RoundedRectangle(cornerRadius: 30)
                    .frame(height: UIScreen.main.bounds.height * 0.5)
                    .transition(.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .bottom)))
                    .animation(.spring)
            }
            
        }
        .edgesIgnoringSafeArea(.bottom)
        
    }
}

#Preview {
    TransitionUIView()
}
