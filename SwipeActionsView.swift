//
//  SwipeActionsView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/10.
//

import SwiftUI

struct SwipeActionsView: View {

    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach",
    ]

    var body: some View {

        List {
            ForEach(fruits, id: \.self) {
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(.gray)
                        Button("Save") {
                            
                        }
                        .tint(.green)
                    }
            }
            //            .onDelete(perform: delete)
        }

    }

    func delete(indexSet: IndexSet) {

    }
}

#Preview {
    SwipeActionsView()
}
