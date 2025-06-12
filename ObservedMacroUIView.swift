//
//  ObservedMacroUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/12.
//

import SwiftUI

@Observable class ObservedViewModel {
    var title: String = "some title"
}

struct ObservedMacroUIView: View {
    
    @State private var viewModel = ObservedViewModel()
    
    var body: some View {
        Text(viewModel.title)
            .environment(viewModel)
    }
    
}

#Preview {
    ObservedMacroUIView()
}
