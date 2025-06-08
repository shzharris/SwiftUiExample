//
//  onAppearAndDisappearUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct onAppearAndDisappearUIView: View {
    
    @State var myText:String = "start text"
    @State var count: Int = 0
    
    var body: some View {
        
        NavigationView {
            ScrollView{
                Text(myText)
                LazyVStack {
                    ForEach(0..<10) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear {
                                count += 1
                            }
                    }
                }
            }
            .onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 5, execute: {
                    myText = "this is the new text"
                })
                
            })
            .onDisappear(perform: {
                myText = "Ending text"
            })
            .navigationTitle("On Appear :\(count)")
        }
        
    }
}

#Preview {
    onAppearAndDisappearUIView()
}
