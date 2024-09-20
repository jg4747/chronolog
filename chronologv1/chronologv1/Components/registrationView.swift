//
//  registrationView.swift
//  chronologv1
//
//  Created by Janie Giron on 9/19/24.
//

import SwiftUI

struct registrationView: View {
    @State private var email=""
    @State private var password=""
    @State private var fullName=""
    @State private var confirmPassword=""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
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
            
            inputView(text: $fullName, title: "Full Name", placeholder: "Enter your full name")
            
            inputView(text: $password, title: "Password", placeholder: "Enter your password", isSecuredField: true)
            
            inputView(text: $confirmPassword, title: "Confirm Password", placeholder: "Re-enter your password", isSecuredField: true)
        }
        .padding(.horizontal)
        .padding(.top, 12)
        
        //sign up button
        Button {
            print("Signing up..")
        } label: {
            HStack{
                Text("SIGN UP").fontWeight(.semibold)
                Image(systemName: "arrow.right")
            }
            .foregroundColor(.white)
            .frame(width: UIScreen.main.bounds.width - 32, height: 48)
            
        }
        .background(Color(.systemBlue))
        .cornerRadius(10)
        .padding(.top, 24)
        
        Spacer()
        
        Button{
            dismiss()
        } label: {
            HStack(spacing: 3){
                Text("Already have an account? ")
                Text("Sign in").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .font(.system(size: 17))
        }
        
    }
}

#Preview {
    registrationView()
}
