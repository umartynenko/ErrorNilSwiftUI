//
//  UserCardView.swift
//  ErrorNilSwiftUI
//
//  Created by Юрий Мартыненко on 20.07.2024.
//

import SwiftUI

struct UserCardView: View {
    @State var imageName: String = ""
    @State var userName: String = "User Name"
    @State var description: String = "Lorem ipsum dolor sit amet"
    
    var body: some View {
        HStack(alignment: .top, spacing: 21) {
            Image(imageName)
                .resizable()
                .frame(width: 82, height: 82)
                .cornerRadius(31)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(userName)
                    .font(.title)
                    .fontWeight(.bold)
                
                VStack(alignment: .leading, spacing: 11) {
                    Text(description)
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .foregroundStyle(.gray)
                    
                    HStack {
                        Image("026f69015a542af83e0fd3b9a9feeeef")
                            .resizable()
                            .renderingMode(.template)
                            .scaledToFit()
                            .frame(width: 19, height: 19)
                            .foregroundStyle(Color("colorCustomButton2"))
                        Text("10.40 am - 2.40 pm")
                            .font(.subheadline)
                            .fontWeight(.thin)
                    }
                    
                    HStack {
                        Text("$10.50")
                            .font(.subheadline)
                            .fontWeight(.thin)
                        
                        Spacer()
                        
                        Button {
                        } label: {
                            Text("Appointment")
                                .font(.system(size: 14))
                                .fontWeight(.bold)
                        }
                        .frame(width: 126, height: 30)
                        .background(Color("colorCustomButton2"))
                        .foregroundStyle(.white)
                        .cornerRadius(17)
                    }
                }
            }
        }
    }
}

#Preview {
    UserCardView(imageName: "803cefb822dd40cbce102bfd06057001")
}
