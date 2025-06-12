//
//  ControlGridMenuUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/12.
//

import SwiftUI

struct ControlGridMenuUIView: View {
    var body: some View {
        
        Menu("My Menu") {
            ControlGroup {
                Button("one") {
                    
                }
                Button("three") {
                    
                }
                Menu("other") {
                    Button("one") {
                        
                    }
                    Button("three") {
                        
                    }
                }
            }
            Button("two") {
                
            }
        }
    }
}

#Preview {
    ControlGridMenuUIView()
}
