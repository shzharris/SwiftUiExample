//
//  OnSubmitLabelView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/10.
//

import SwiftUI

struct OnSubmitLabelView: View {
    
    @State private var text:String = ""
    var body: some View {
        
        TextField("Placeholder", text: $text)
            .submitLabel(.route)
            .onSubmit {
                print("something to the console")
            }
        
    }
}

#Preview {
    OnSubmitLabelView()
}
