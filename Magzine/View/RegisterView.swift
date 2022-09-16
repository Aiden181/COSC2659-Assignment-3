//
//  RegisterView.swift
//  CRUD_Firebase
//
//  Created by Thien Van on 12/09/2022.
//

import SwiftUI
import Firebase

struct RegisterView: View {
    // Create two states for email and password
    @State private var email = ""
    @State private var password = ""
    
    // Create error messsage to handle when login or sign up fail
    @State private var errorMessage = ""
    
    // Initialize state to detect whether user logged in or not
    @State private var isUserLoggedIn = false
    
    var body: some View {
        if isUserLoggedIn {
            ContentView()
        } else {
            content
        }
    }
    
    var content: some View {
        ZStack{
            Color.black
            
            RoundedRectangle(cornerRadius: 30, style: .continuous)
                .foregroundStyle(.linearGradient(colors: [.white], startPoint: .topLeading, endPoint: .bottomTrailing))
                .frame(width: 1000, height: 400)
                .rotationEffect(.degrees(220))
                
            VStack{
                Text("Magzine")
                    .font(.system(size: 40, weight: .bold, design: .rounded))
                    .offset(x: -100, y: 0)
                
                // MARK: - Email
                // Binding email
                TextField("", text: $email)
                    .textFieldStyle(.plain)
                
                    .placeholder(when: email.isEmpty){
                        Text("Email")
                            .bold()
                    }
                
                Rectangle()
                    .frame(width: 350, height: 1)
                
                // MARK: - Password
                SecureField("", text: $password)
                    .textFieldStyle(.plain)
                    .placeholder(when: password.isEmpty){
                        Text("Password")
                            .bold()
                    }
                
                Rectangle()
                    .frame(width: 350, height: 1)

                    
                // MARK: - ERROR MESSAGE DISPLAYING
                Text(errorMessage)
                
                // MARK: - BUTTON
                // Sign Up
                Button {
                    signUp()
                } label: {
                    Text("Sign Up")
                        .bold()
                        .frame(width: 200, height: 40)
                        .background(
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .fill(.linearGradient(colors: [.black], startPoint: .top, endPoint: .bottomTrailing))
                                
                        ).foregroundColor(.white)
                }
                .padding(.top)
                .offset(y: 20)
                
                // Login
                Button {
                    signIn()
                } label: {
                    Text("Press here to login if you already have an account!")
                        .bold()
                        .foregroundColor(.blue)
                }
                .padding(.top)
                .offset(y: 20)
            }
            .frame(width: 350)
            .onAppear{
                Auth.auth().addStateDidChangeListener { auth, user in
                    if user != nil {
                        isUserLoggedIn.toggle()
                    }
                }
            }
           
         
        
        }.ignoresSafeArea()
    }
    
    
    // MARK: - REGISTER FUNCTION
    func signUp(){
        Auth.auth().createUser(withEmail: email, password: password) {result, error in
            if error != nil {
                errorMessage = error!.localizedDescription
                print(error!.localizedDescription)
            }
        }
    }
    
    // MARK: - LOGIN FUNCTION
    func signIn(){
        Auth.auth().signIn(withEmail: email, password: password) {result, error in
            if error != nil {
                errorMessage = error!.localizedDescription
                print(error!.localizedDescription)
            }
        }

    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            ZStack(alignment: alignment){
                placeholder().opacity(shouldShow ? 1 : 0)
                self
            }
        }
}
