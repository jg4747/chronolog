//
//  loginView.swift
//  chronologv1
//
//  Created by Janie Giron on 9/19/24.
//

import SwiftUI

struct loginView: View {
    @State private var email=""
    @State private var password=""
    
    var body: some View {
        NavigationStack{
            VStack {
                // image
                //                Image("filename")
                //                    .resizable()
                //                    .scaledToFit()
                //                    .frame(width: 100,height: 120)
                //                    .padding(.vertical, 32)
                //form fields
                VStack(spacing: 24){
                    inputView(text: $email, title: "Email Address", placeholder: "name@example.com")
                        .autocapitalization(.none)
                    
                    inputView(text: $password, title: "Password", placeholder: "Enter your password", isSecuredField: true)
                }
                .padding(.horizontal)
                .padding(.top, 12)
                
                //sign in button
                Button {
                    print("Log user in..")
                } label: {
                    HStack{
                        Text("SIGN IN").fontWeight(.semibold)
                        Image(systemName: "arrow.right")
                    }
                    .foregroundColor(.white)
                    .frame(width: UIScreen.main.bounds.width - 32, height: 48)
                    
                }
                .background(Color(.systemBlue))
                .cornerRadius(10)
                .padding(.top, 24)

                Spacer()
                
                //sign up buttom
                NavigationLink{
                    registrationView().navigationBarBackButtonHidden(true)
                } label: {
                    HStack(spacing: 3){
                        Text("Dont have an account? ")
                        Text("Sign up").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .font(.system(size: 17))
                }
            }
        }
    }
}

#Preview {
    loginView()
}

