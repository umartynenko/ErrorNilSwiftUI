//
//  CustomButtonView.swift
//  ErrorNilSwiftUI
//
//  Created by Юрий Мартыненко on 20.07.2024.
//

import SwiftUI

struct CustomButtonView: View {
    @State var imageName: String = ""
    @State var text = ""
    @State var color: Color = .blue
    
    var body: some View {
        ZStack {
            VStack(spacing: 14) {
                Image(imageName)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 42, height: 42)
                
                Text(text)
            }
            .foregroundColor(.white)
            
        }
        .frame(width: 112, height: 112)
        .background(color)
        .cornerRadius(22)
    }
}

#Preview {
    CustomButtonView(imageName: "346db331a0c1ba5994f5ed4b92c1073c", text: "Phone")
}
