//
//  AlertUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/6.
//

import SwiftUI

struct AlertUIView: View {

    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .yellow
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
    @State var alertType: MyAlerts? = nil
    
    enum MyAlerts {
        case success
        case error
    }

    var body: some View {

        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)

            VStack {
                Button(
                    "Click here",
                    action: {
//                        alertTitle = "Hello2222"
//                        alertMessage = "What!!!ffff!😳 😳"
                        alertType = .error
                        showAlert.toggle()
                    }
                )

                Button(
                    "Click here",
                    action: {
//                        alertTitle = "Hello"
//                        alertMessage = "What!!!!"
                        alertType = .success
                        showAlert.toggle()
                    }
                )

            }
            .foregroundColor(.white)
            .font(.largeTitle)
            .alert(
                isPresented: $showAlert,
                content: {
                    getAlert()
                }
            )
        }

    }

    func getAlert() -> Alert {
        
        switch alertType {
        case .success:
            return Alert(title: Text("an success"), dismissButton: .default(Text("error"), action: {
                backgroundColor = .yellow
            }))
        case .error:
            return Alert(title: Text("an error"), message: nil, dismissButton: .default(Text("ok"), action: {
                backgroundColor = .green
            }))
        case nil:
            return Alert(title: Text("sorry"))
        }
        
        //            Alert(title: Text("There was an error"))

        //        return Alert(
        //            title: Text("This is the title"),
        //            message: Text("here is warning"),
        //            primaryButton: .destructive(
        //                Text("Delete"),
        //                action: {
        //                    backgroundColor = .red
        //                }
        //            ),
        //            secondaryButton: .cancel()
        //        )
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("Ok"))
//        )

    }
}

#Preview {
    AlertUIView()
}
