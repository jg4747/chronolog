//
//  profileView.swift
//  chronologv1
//
//  Created by Janie Giron on 9/19/24.
//

import SwiftUI

struct profileView: View {
    var body: some View {
        List{
            Section{
                HStack{
                    Text("JG").font(.title).fontWeight(.semibold).foregroundColor(.white).frame(width: 72, height: 72).background(Color(.systemGray)).clipShape(Circle())
                    VStack{
                        Text("Janie Giron").fontWeight(.semibold).padding(.top, 4)
                        Text("test@icloud.com").font(.footnote).accentColor(.gray)
                    }
                }
            }
            Section("General"){
                settingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
                
            }
            Section("Account"){
                Button{
                    print("Sign out..")
                } label: {
                    settingsRowView(imageName: "arrow.left.circle.fill", title: "Sign Out", tintColor: .red)
                }
                
            }
        }
    }
}

#Preview {
    profileView()
}
