//
//  inputView.swift
//  chronolog
//
//  Created by Janie Giron on 9/19/24.
//

import SwiftUI

struct inputView: View {
    @Binding var text: String
    let title: String
    let placeholder : String
    var isSecuredField = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12){
            Text(title)
                .foregroundColor(Color(.darkGray))
                .fontWeight(.semibold)
                .font(.footnote)
            if isSecuredField{
                SecureField(placeholder, text: $text)
                    .font(.system(size: 14))
            } else{
                TextField(placeholder, text: $text)
                    .font(.system(size: 14))
            }
            Divider()
        }
    }
}

#Preview {
    inputView(text: .constant(""), title: "Email Adress", placeholder: "name@example.com")
}
