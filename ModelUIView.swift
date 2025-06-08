//
//  ModelUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/8.
//

import SwiftUI

struct UserModel: Identifiable {
    let id:String = UUID().uuidString
    let displayName: String
    let userName: String
    let followCount: Int
    let isVerified: Bool
}

struct ModelUIView: View {
    
    @State var users: [UserModel] = [
//        "nick", "Emily", "Samantha", "Chris"
        UserModel(displayName: "Nick", userName: "Nick12", followCount: 12, isVerified: false),
        UserModel(displayName: "Emily", userName: "Emily2", followCount: 120, isVerified: true),
        UserModel(displayName: "Samantha", userName: "Samantha12", followCount: 22, isVerified: true),
        UserModel(displayName: "Chris", userName: "Chris122", followCount: 44, isVerified: false)
    ]
    
    var body: some View {
        
        NavigationView(content: {
            List {
                ForEach(users) { user in
                    HStack {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        Image(systemName: "checkmark.seal.fill")
                            .foregroundColor(user.isVerified ? .blue : .gray)
                        
                        VStack {
                            Text("\(user.followCount)")
                                .font(.headline)
                            Text("Follows")
                                .foregroundColor(.gray)
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 10)
                }
                
                
                .listStyle(InsetGroupedListStyle())
                .navigationTitle("users")
            }
        })
    }
}

#Preview {
    ModelUIView()
}
