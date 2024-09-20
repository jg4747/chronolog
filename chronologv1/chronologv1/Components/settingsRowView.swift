//
//  settingsRowView.swift
//  chronologv1
//
//  Created by Janie Giron on 9/19/24.
//

import SwiftUI

struct settingsRowView: View {
    let imageName: String
    let title : String
    let tintColor : Color
    
    var body: some View {
        HStack(spacing: 12){
            Image(systemName: imageName).imageScale(.small).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/).foregroundColor(tintColor)
            Text(title).font(.subheadline).foregroundColor(.black)
        }
    }
}

#Preview {
    settingsRowView(imageName: "gear", title: "Version", tintColor: Color(.systemGray))
}
