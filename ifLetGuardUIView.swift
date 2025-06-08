//
//  ifLetGuardUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct ifLetGuardUIView: View {

    @State var displayText: String? = nil
    @State var currentUserId: String? = "2"
    @State var isLoading: Bool = false

    var body: some View {

        NavigationView {
            VStack {
                Text("Hear are")

                if let text = displayText {
                    Text(text)
                        .font(.title)
                }
                // do not user force
//                Text(displayText!)
//                    .font(.title)

                if isLoading {
                    ProgressView()
                }

                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
//                loadData()
                loadData2()
            }
        }

    }

    func loadData() {
        if let userId = currentUserId {
            isLoading = true
            DispatchQueue.main.asyncAfter(
                deadline: .now() + 3,
                execute: {
                    isLoading = false
                    displayText = "new Code, userid is : \(userId)"
                }
            )
        } else {
            displayText = "error , there is not user id "
        }

    }
    
    func loadData2() {
        guard let userId = currentUserId else {
            displayText = "error , there is not user id "
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(
            deadline: .now() + 3,
            execute: {
                isLoading = false
                displayText = "new Code, userid is : \(userId)"
            }
        )
        
    }
}

#Preview {
    ifLetGuardUIView()
}
