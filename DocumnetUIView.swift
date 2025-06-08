//
//  DocumnetUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct DocumnetUIView: View {

    // MARK: PROPETIES
    @State var data: [String] = [
        "Apple",
        "Oranges",
        "Bannaa",
    ]

    @State var showAlert: Bool = false

    // MARK: BODY
    /**
    Working copy - things to do
     1) fix title
     2) fix alert
     */
    var body: some View {

        NavigationView {
            foregroundLayer
        }

    }
    
    //MARK: other view

    /// this is foregroundLayer,hahah
    private var foregroundLayer: some View {
        ScrollView {

            Text("Hello")

            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
            .navigationTitle("Documentation")
            .navigationBarItems(
                trailing:
                    Button(
                        "ALERT",
                        action: {
                            showAlert.toggle()
                        }
                    )
            )
            .alert(
                isPresented: $showAlert,
                content: {
                    getAlert(text: "This is alert")
                }
            )
        }
    }
    
    // MARK: FUNC
    
    /// Description : get alert
    ///
    /// This function createor
    ///  ```
    ///     getAlert(text: "HI") -> Alert(title: Text("HI"))
    ///  ```
    /// - Warning:  must be text
    /// - Parameter text: this is thitle
    /// - Returns : return an alert a title
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

#Preview {
    DocumnetUIView()
}
