//
//  SwiftUIView.swift
//  Days100OfSwiftUI
//
//  Created by HarrisShao on 2025/6/10.
//

import SwiftUI

struct OnboardingView: View {

    
    // Onboarding state:
    /*
     0 - welcome screen
     1 - add name
     2 - add age
     3 - add gender
     */
    @State var onboardingState: Int = 0
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
   
    
    let transitionSelf:AnyTransition = .asymmetric(
        insertion: .move(edge: .trailing),
        removal: .move(edge: .leading)
    )
    
    @State var showAlert: Bool = false
    @State var alertTitle:String = ""
    
    @AppStorage("name") var currentUserName : String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {

        VStack {
            ZStack {
                switch onboardingState {
                case 0:
                    welecomeSection.transition(transitionSelf)
                case 1:
                    addNameSection.transition(transitionSelf)
                case 2:
                    addAgeSection.transition(transitionSelf)
                case 3:
                    addGenderSection.transition(transitionSelf)
                default:
                    RoundedRectangle(cornerRadius: 25.0)
                        .foregroundColor(.green)
                }
            }
            VStack {
                Spacer()
                bottomButton
            }
            .padding(30)
            
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }

}

#Preview {
    OnboardingView().background(Color.purple)
}

// MARK: COMPONENTS
extension OnboardingView {
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "Sign In" :
                onboardingState == 3 ? "Finish" :
                "Next")
            .font(.headline)
            .foregroundColor(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .onTapGesture {
                handleNextButtonAction()
            }
    }

    private var welecomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(.white)
            Text("Find your match.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundColor(.white),
                    alignment: .bottom
                )
            Text("This is the #1 app for finding your mathc online ! ")
                .fontWeight(.medium)
                .foregroundColor(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }

    private var addNameSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What`s your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            TextField("Your name here ..", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .cornerRadius(10)
                .background(Color.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }

    private var addAgeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What`s your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Text(String(format: "%.0f", age))
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)
            Slider(
                value: $age,
                in: 18...100,
                step: 1
            ).accentColor(.white)

            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }

    private var addGenderSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Text("What`s your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.white)

            Picker(
                selection: $gender,
                label:
                    Text(gender.count > 1 ? gender: "Select a gender")
                    .font(.headline)
                    .foregroundColor(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                ,
                content: {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-Binary").tag("Non-Binary")
                }
            )
            .pickerStyle(MenuPickerStyle())

            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
}

// MARK: FUNCTIONS
extension OnboardingView {
    
    func handleNextButtonAction() {
        
        // check inputs
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters long !")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender before moving forward ")
                return
            }
        default:
            break
        }
        
        // GO to next section
        if onboardingState == 3 {
            singedIn()
        } else {
            withAnimation(.spring()) {
                onboardingState += 1
            }
//            onboardingState += 1
        }
         
    }
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
    func singedIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
        
    }
}
