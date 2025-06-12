//
//  AsyncImageUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/10.
//

import SwiftUI

struct AsyncImageUIView: View {

    //    let url = URL(string: "https://pixum-cms.imgix.net/4La0GJ6SkqE8hAtzAIyci4/c2b9fe88b86beba6f865ef692c1ad798/pfk_2x_A3_hoch_mit_und_ohne_leiste.jpg?auto=compress,format&rect=671,294,1844,1383&trim=false&q=30&w=50")
    //

    let url = URL(string: "https://picsum.photos/400")

    var body: some View {

//        AsyncImage(url: url, content: { Image in
//            Image.resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .cornerRadius(20)
//        }, placeholder: {
//            ProgressView()
//        })
//            .frame(width: 100, height: 100)

        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let image):
                image.resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .cornerRadius(20)
            case .failure(let error):
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }

    }
}

#Preview {
    AsyncImageUIView()
}
