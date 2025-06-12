//
//  ResiziableFormView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/11.
//

import SwiftUI

struct ResiziableFormView: View {

    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large

    var body: some View {

        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            MyNextView(detents: $detents)

        }

    }
}

struct MyNextView: View {

    @Binding var detents: PresentationDetent
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea()

            VStack {
                Button("Click") {
                    detents = .medium
                }

                Button("Click2") {
                    detents = .large
                }
            }

        }
        //                .presentationDetents([.medium, .large])
        .presentationDragIndicator(.hidden)
        //                .interactiveDismissDisabled()
        //                .presentationDetents([.fraction(0.1), .medium, .large])
        .presentationDetents([.medium, .large], selection: $detents)
    }
}

#Preview {
    ResiziableFormView()
}
