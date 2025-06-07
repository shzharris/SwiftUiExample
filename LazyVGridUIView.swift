//
//  LazyVGridUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/4.
//

import SwiftUI

struct LazyVGridUIView: View {
    let columns: [GridItem] = [

        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),

    ]

    var body: some View {
        ScrollView {
            
            Rectangle()
                .fill(.orange)
                .frame(height:400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 6,
                pinnedViews: [.sectionHeaders],
                content: {

                    Section(
                        header:
                            Text("Section 1")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color.blue)
                            .padding()
                        ,
                        content: {
                            ForEach(0..<21) { index in
                                Rectangle()
                                    .frame(height: 150)
                            }
                        }
                    )
                    
                    Section(
                        header:
                            Text("Section 2")
                            .font(.title)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .background(Color.red)
                            .padding()
                        ,
                        content: {
                            ForEach(0..<21) { index in
                                Rectangle()
                                    .frame(height: 150)
                            }
                        }
                    )

                }

            )

        }

    }
}

#Preview {
    LazyVGridUIView()
}
