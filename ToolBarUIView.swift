//
//  ToolBarUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/11.
//

import SwiftUI

struct ToolBarUIView: View {
    @State private var text:String = ""

    var body: some View {
        
        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea()
                
                ScrollView {
                    TextField("Placholder", text: $text)
                    
                    ForEach(0..<100) { _ in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 200, height: 200, alignment: .center)
                    }
                }
                
                
            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "gear")
                }
            }
            .toolbarColorScheme(.dark, for: .navigationBar)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    
                }
                Button("Screen 2") {
                    
                }
            }
            
        }
        
    }
}

#Preview {
    ToolBarUIView()
}
