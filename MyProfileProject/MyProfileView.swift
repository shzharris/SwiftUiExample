//
//  MyProfileView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/11.
//

import SwiftUI

struct MyProfileView: View {

    // 参数声明
    let introductionText: String =
        "然后就可以看到个人介绍部分两侧紧挨着屏幕两侧，使它们之间有一定距离的常规方式是为Text视图添加padding修饰符，给视图四周留白。当然也可以给最外层的VStack添加padding修饰符，如图5-16所示，让最外层的视图留有边距。"

    var body: some View {
        
        // 基本信息
        VStack(
            spacing: 20,
            content: {
                
                // 个人头像
                Image(systemName: "sharedwithyou.circle")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.green)
                    .clipShape(Circle())
                    .overlay(content: {
                        Circle().stroke(Color(.systemGray5), lineWidth: 2.0)
                    })
                    .frame(width: 160)
                // 个人信息
                VStack(
                    spacing: 10,
                    content: {
                        Text("Harris Shao")
                            .font(.title2)
                            .bold()
                        Text("IOS 独立开发者")
                            .font(.title3)
                        HStack {
                            Image(systemName: "location.circle.fill")
                            Text("广州")
                                .font(.title3)
                        }
                        .foregroundColor(.gray)

                    }
                )

                Text(introductionText)
                    .foregroundStyle(Color.gray)
                    .padding()

                UserProfileData()
                Spacer()
                ScrollView() {
                    MyArticleView()
                }
                
            }
        )
    }

}

struct UserProfileData: View {
    var body: some View {
        HStack(
            spacing: 50,
            content: {

                VStack(
                    spacing: 10,
                    content: {
                        Text("25")
                            .font(.title2)
                            .bold()
                        Text("关注")
                            .font(.caption)
                            .foregroundStyle(Color.gray)
                    }
                )
                Spacer()
                VStack(
                    spacing: 10,
                    content: {
                        Text("25")
                            .font(.title2)
                            .bold()
                        Text("关注")
                            .font(.caption)
                            .foregroundStyle(Color.gray)
                    }
                )
                Spacer()
                VStack(
                    spacing: 10,
                    content: {
                        Text("25")
                            .font(.title2)
                            .bold()
                        Text("关注")
                            .font(.caption)
                            .foregroundStyle(Color.gray)
                    }
                )

            }
        )
        .padding(.horizontal, 48)
        .padding(.vertical, 20)
        .background(Color(#colorLiteral(red: 0.8907256722, green: 0.8907256722, blue: 0.8907256722, alpha: 1)))
        .cornerRadius(10.0)
        .padding(.horizontal, 20)
        
    }
}

#Preview {
    MyProfileView()
}
