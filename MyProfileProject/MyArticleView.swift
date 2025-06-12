//
//  MyArticleView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/11.
//

import SwiftUI

struct ArticleModel: Identifiable {
    let id:String = UUID().uuidString
    var image: Image
    var title: String
    var articleNum: Int
    var ubscriptionNum: Int
}


struct MyArticleView: View {
    
     let ArticleList:[ArticleModel] = [
        ArticleModel(
            image: Image(systemName: ("globe.americas")),
            title: "SwiftUI 项目实战",
            articleNum: 1,
            ubscriptionNum: 2),
        ArticleModel(
            image: Image(systemName: ("globe.americas")),
            title: "SwiftUI 项目实战2",
            articleNum: 1,
            ubscriptionNum: 2),
        ArticleModel(
            image: Image(systemName: ("globe.americas")),
            title: "SwiftUI 项目实战3",
            articleNum: 1,
            ubscriptionNum: 2),
        ArticleModel(
            image: Image(systemName: ("globe.americas")),
            title: "SwiftUI 项目实战",
            articleNum: 1,
            ubscriptionNum: 2),
        ArticleModel(
            image: Image(systemName: ("globe.americas")),
            title: "SwiftUI 项目实战",
            articleNum: 1,
            ubscriptionNum: 2),
        ArticleModel(
            image: Image(systemName: ("globe.americas")),
            title: "SwiftUI 项目实战",
            articleNum: 1,
            ubscriptionNum: 2),
        ArticleModel(
            image: Image(systemName: ("globe.americas")),
            title: "SwiftUI 项目实战",
            articleNum: 1,
            ubscriptionNum: 2),
    ]
    var body: some View {
        VStack(spacing: 20, content: {
            ForEach(ArticleList) {article in
                HStack(spacing: 20, content: {
                    article.image
                        .resizable()
                        .frame(width: 80, height: 80)
                        .cornerRadius(4)
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Text("\(article.title)")
                                .font(.title2)
                                .foregroundStyle(Color.appFontColor)
                                .bold()
                            Spacer()
                            Image(systemName: "ellipsis")
                                .foregroundStyle(Color.gray)
                        }
                        
                        Spacer()
                        
                        HStack(spacing: 20) {
                            Text("\(article.articleNum) 人阅读")
                            Text("\(article.ubscriptionNum) 人订阅 ")
                        }
                        .foregroundStyle(Color.gray)
                        Spacer()
                    }
                })
                .frame(height: 80)
                .padding(.horizontal)
            }
        })
    }
}

#Preview {
    MyArticleView()
}
