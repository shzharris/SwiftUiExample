//
//  SheetUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/5.
//

import SwiftUI

struct SheetUIView: View {

    @State var showSheet: Bool = false

    var body: some View {

        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)

            Button(
                action: {
                    showSheet.toggle()
                },
                label: {
                    Text("Button")
                        .foregroundColor(.green)
                        .font(.headline)
                        .padding(20)
                        .background(Color.white.cornerRadius(20.0))
                }
            )
            .sheet(
                isPresented: $showSheet,
                content: {
                    SecondSheet()
                }
            )
        }

    }
}

struct SecondSheet: View {

    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)

            Button(
                action: {
                    presentationMode.wrappedValue.dismiss()
                },
                label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding(20)
                }
            )

        }

    }
}

#Preview {
    SheetUIView()
}
