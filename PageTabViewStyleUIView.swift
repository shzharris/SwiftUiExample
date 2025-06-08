//
//  PageTabViewStyleUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct PageTabViewStyleUIView: View {

    @State var selectedTab: Int = 1
    let icons: [String] = [
        "heart.fill",
        "globe",
        "house.fill",
        "person.fill"
    ]

    var body: some View {
        
        TabView {
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.red)
//            RoundedRectangle(cornerRadius: 25.0)
//                .foregroundColor(.green)
//
//            RoundedRectangle(cornerRadius: 25.0)
            ForEach(icons.indices) { icon in
                Image(systemName: icons[icon])
                    .resizable()
                    .scaledToFit()
                    .tag(icon)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .frame(height: 300)
        

//        TabView(selection: $selectedTab) {
//            HomeUIView(selectedTab: $selectedTab)
//            BrowseUIView()
//            PersonUIView()
//        }
//        .accentColor(.red)

    }
}

struct HomeUIView: View {

    @Binding var selectedTab: Int

    var body: some View {
        ZStack {
            Color.red
            VStack {

                Text("Home Tab")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Button {
                    selectedTab = 2
                } label: {
                    Text("Go to profile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                }

            }

        }
        .tabItem {
            Image(systemName: "house.fill")
            Text("Home")
        }.tag(0)

    }
}

struct BrowseUIView: View {
    var body: some View {
        ZStack {
            Text("Browse Tab")

        }
        .tabItem {
            Image(systemName: "globe")
            Text("Browse")
        }
        .tag(1)

    }
}

struct PersonUIView: View {
    var body: some View {
        Text("Profile Tab")
            .tabItem {
                Image(systemName: "person.fill")
                Text("Person")
            }
            .tag(2)
    }
}

#Preview {
    PageTabViewStyleUIView()
}
