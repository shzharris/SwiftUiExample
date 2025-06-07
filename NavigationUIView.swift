//
//  NavigationUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/6.
//

import SwiftUI

struct NavigationUIView: View {
    var body: some View {

        NavigationView {
            ScrollView {
                NavigationLink(
                    "Hello world",
                    destination: MyOtherScreen()
                )

                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("All Inboxes")
            //            .navigationBarTitleDisplayMode(.inline)
            //            .navigationBarHidden(true)
            .navigationBarItems(
                leading: Image(systemName: "person.fill"),
                trailing: NavigationLink(destination: MyOtherScreen(), label: {
                    Image(systemName: "gear")
                })
                .accentColor(.red)
            )

        }

    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Title")
                .navigationBarBackButtonHidden(true)
            
            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                .font(.title)
                
                NavigationLink("Click here", destination: Text("3rd view"))
            }
            
            
            
        }
    }
}

#Preview {
    NavigationUIView()
}
