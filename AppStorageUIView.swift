//
//  AppStorageUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct AppStorageUIView: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20, content: {
            
//            Text(currentUserName ?? "Add Name here.")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "NickDDff"
                currentUserName = name
            }
        })
        
    }
}

#Preview {
    AppStorageUIView()
}
