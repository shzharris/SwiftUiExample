//
//  SheetTransitionUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/6.
//

import SwiftUI

struct SheetTransitionUIView: View {
    
    @State var showNewScreen:Bool = false
    
    var body: some View {
        
        ZStack {
            Color.orange
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button") {
                    
                    showNewScreen.toggle()
                    
                }
                .font(.largeTitle)
                .foregroundColor(.white)
                
                
                Spacer()
                
                
            }
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreenView()
//            })
            
            //
            ZStack {
                
                if showNewScreen {
                    NewScreenView(showNewScreen: $showNewScreen)
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                        .animation(.spring())
                }
                
            }.zIndex(2.0)
                
            
//
            
//            NewScreenView(showNewScreen: $showNewScreen)
//                .padding(.top, 100)
//                .offset(y: showNewScreen ?  0 : UIScreen.main.bounds.height)
//                .animation(.spring())
        
        }
    }
}

struct NewScreenView : View {
    
    @Environment(\.presentationMode) var presentationMod
    @Binding var showNewScreen : Bool
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.purple
                .edgesIgnoringSafeArea(.all)
            
            Button(action: {
                presentationMod.wrappedValue.dismiss()
//                showNewScreen.toggle()
                
            }, label: {
                Image(systemName: "xmark")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(20)
            })
        }
    }
}





#Preview {
    SheetTransitionUIView()
//    NewScreen()
}
