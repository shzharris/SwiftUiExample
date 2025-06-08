//
//  ToggleUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct ToggleUIView: View {
    
    @State var isOn:Bool = false
    
    var body: some View {
        
        VStack {
            HStack {
                Text("Status")
                Text(isOn ? "Online" :"Offline")
            }
            Toggle(isOn: $isOn, label: {
                Text("Label")
            })
            .toggleStyle(SwitchToggleStyle(tint: .red))
            Spacer()
        }
        .padding(.horizontal, 100)
        
        
    }
}

#Preview {
    ToggleUIView()
}
