//
//  SheetActionUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/7.
//

import SwiftUI

struct SheetActionUIView: View {
    @State var showActionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost

    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }

    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 50, height: 50)
                Text("@UserName")
                Spacer()
                Button(
                    action: {
                        actionSheetOption = .isOtherPost
                        showActionSheet.toggle()
                    },
                    label: {
                        Image(systemName: "ellipsis")
                    }
                )
                .frame(width: 50,height: 50)
                .accentColor(.red)

            }
            .padding(.horizontal)

            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheet, content: getActionSheet)

    }

    func getActionSheet() -> ActionSheet {

        let shareButton: ActionSheet.Button = .default(Text("Share")) {

        }

        let reportButton: ActionSheet.Button = .destructive(Text("Report")) {

        }

        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {

        }

        let cancleButton: ActionSheet.Button = .cancel()

        let title = Text("what would you like to do ?")

        switch actionSheetOption {
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancleButton]
            )
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, deleteButton, cancleButton]
            )
        }

        //        return ActionSheet(title: Text("this is the title"))
        //        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
        //        let button2: ActionSheet.Button = .destructive(Text("DES"))
        //        let button3:ActionSheet.Button = .cancel()
        //
        //        return ActionSheet(
        //            title: Text("This is title"),
        //            message: Text("this is message"),
        //            buttons: [button1, button2, button3]
        //        )
    }
}

#Preview {
    SheetActionUIView()
}
