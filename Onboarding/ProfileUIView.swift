//
//  ProfileUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/10.
//

import SwiftUI

struct ProfileUIView: View {
    
    @AppStorage("name") var currentUserName : String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    
    var body: some View {
        
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user age is \(currentUserAge ?? 0)")
            Text("This user gender is \(currentUserGender ?? "Unknown")")
            
            Text("SignOut")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
        .font(.title)
        .foregroundColor(.purple)
        .padding()
        .padding(.vertical, 40)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 10)
        
    }
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring(), {
            currentUserSignedIn = false
        })
    }
}

#Preview {
    ProfileUIView()
}
