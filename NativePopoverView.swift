//
//  NativePopoverView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/11.
//

import SwiftUI

struct NativePopoverView: View {
    
    @State private var showPopover: Bool = false
    
    var body: some View {
        
        ZStack {
            Color.gray.ignoresSafeArea()
            
            Button ("Click me") {
                showPopover.toggle()
            }
            .padding(20)
            .background(Color.yellow)
            .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                Text("Hello , Subsriber")
                    .presentationCompactAdaptation(.popover)
            })
//            .popover(isPresented: $showPopover, content: {
//                Text("Hello , Subsriber")
//                    .presentationCompactAdaptation(.popover)
//            })
            
        }
        
        
    }
}

#Preview {
    NativePopoverView()
}
