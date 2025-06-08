//
//  DarkModeUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct DarkModeUIView: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        NavigationView {
            ScrollView {
                VStack (spacing: 20) {
                    Text("This text is Primary")
                        .foregroundColor(.primary)
                    
                    Text("This text is Sccondary")
                        .foregroundColor(.secondary)
                    
                    Text("This text is black")
                        .foregroundColor(.black)
                    
                    Text("This text is WhITE")
                        .foregroundColor(.white)
                    
                    Text("This text is Red")
                        .foregroundColor(.red)
                    
                    Text("This text is AutoColor")
                        .foregroundColor(Color("AutoColor"))
                    
                    Text("This text is auto")
                        .foregroundColor(colorScheme  == .light ? .green: .yellow)
                }
            }
            .navigationTitle("Dark Mode ")
        }
        
    }
}

#Preview {
    DarkModeUIView().preferredColorScheme(.light)

    }

#Preview {
    
    DarkModeUIView().preferredColorScheme(.dark)
}
