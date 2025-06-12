//
//  NavigationStackView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/10.
//

import SwiftUI

struct NavigationStackView: View {
    
    let fruits = [
        "Apple", "Orange", "Banana"
    ]
    
    @State private var stackPath: [String] = []

    var body: some View {
        

//        NavigationStack(path: $stackPath) {
        NavigationStack{
            ScrollView {
                VStack(spacing: 40) {
                    
//                    Button("Supper segue!") {
//                        stackPath.append(contentsOf: [
//                            "Coconut", "Watermater"
//                        ])
//                    }
                    
                    ForEach(fruits, id:\.self) { fruit in
                        NavigationLink(value:fruit) {
                            Text(fruit)
                        }
                        
                    }
                    
                    ForEach(0..<10) { x in
                        NavigationLink(value: x) {
                            Text("Click me: \(x)")
                        }
                    }
                    
                }
            }
            .navigationTitle("Nav Bootcmp")
            .navigationDestination(for: Int.self) { value in
                MySecondScreen(value: value)
            }
            .navigationDestination(for: String.self) { value in
                Text("Another Screent:\(value)")
            }
            

        }

    }
}

struct MySecondScreen: View {

    let value: Int

    init(value:Int) {
        self.value = value
        print("Init Screen:\(value)")
    }

    var body: some View {
        Text("I am \(self.value)")
    }
}

#Preview {
    NavigationStackView()
}
