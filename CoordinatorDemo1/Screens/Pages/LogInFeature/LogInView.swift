//
//  LogInView.swift
//  CoordinatorDemo1
//
//  Created by Waleed Jebrin on 13/01/2025.
//

import SwiftUI

struct LogInView: View {
    
    @EnvironmentObject private var coordinator: MainCoordinator
    @StateObject private var loginVM: LogInViewModel
    
    init(state: LogInInput) {
        _loginVM = .init(wrappedValue: .init(fullName: state.fullname))
    }
    
    var body: some View {
        ScrollView {
            VStack {
                Spacer()
                
                VStack(alignment: .leading, spacing: 0) {
                    Text("Welcome Back")
                        .font(.body)
                        .fontWeight(.regular)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        
                    if let name = loginVM.fullName {
                        Text(name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }
                .padding([.bottom, .horizontal], 20)
                
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)
                    .padding(.bottom, 40)
                
                VStack(alignment: .leading) {
                    Text("Username")
                        .font(.headline)
                        .padding(.bottom, 5)
                    
                    TextField("Enter your username", text: $loginVM.username)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(5)
                        .padding(.bottom, 20)
                    
                    Text("Password")
                        .font(.headline)
                        .padding(.bottom, 5)
                    
                    HStack {
                        if loginVM.isSecure {
                            SecureField("Enter your password", text: $loginVM.password)
                        } else {
                            TextField("Enter your password", text: $loginVM.password)
                        }
                        Button(action: {
                            loginVM.isSecure.toggle()
                        }) {
                            Image(systemName: loginVM.isSecure ? "eye.slash" : "eye")
                                .foregroundColor(.gray)
                        }
                    }
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5)
                }
                .padding(.horizontal, 30)
                
                Button(action: {
                    // Handle login action here
                }) {
                    Text("Login")
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .padding(.horizontal, 30)
                }
                .padding(.top, 30)
                
                Spacer()
                
                VStack {
                    Button(action: {
                        coordinator.presentSheet(sheet: .forgotPassword)
                    }) {
                        Text("Forgot Password?")
                            .foregroundColor(.blue)
                    }
                    .padding(.bottom, 10)
                    
                    HStack {
                        Text("Don't have an account?")
                        Button(action: {
                            coordinator.presentModal(modal: .signup)
                        }) {
                            Text("Sign Up")
                                .foregroundColor(.blue)
                        }
                    }
                    .padding(.bottom, 20)
                }
            }
            .background(.white)
            .edgesIgnoringSafeArea(.all)
        }
    }
}

//#Preview {
//    LogInView()
//}
