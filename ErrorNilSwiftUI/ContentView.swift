//
//  ContentView.swift
//  ErrorNilSwiftUI
//
//  Created by Юрий Мартыненко on 18.07.2024.
//

import SwiftUI

let images: [String] = [
    "samsung-memory-gTSrhVdNm7E-unsplash",
    "samsung-memory-QBVHIcVUIBM-unsplash",
    "samsung-memory-VO18rhPnnqA-unsplash"
]

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Image("samsung-memory-vsZAIJqQqdo-unsplash")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(30)
            }
            .padding(.horizontal)
            .padding(.bottom)
            
            HStack(spacing: 14) {
                ForEach(images, id: \.self) { image in
                    Image(image)
                        .resizable()
                        .frame(width: 114, height: 114)
                        .scaledToFit()
                        .cornerRadius(10)
                }
            }
            .padding(.horizontal)
            .padding(.bottom)
            
            HStack {
                HSImageTextView(image: "1432c5708e7ee000d8bb93775961de72", text: "User Name")
                Spacer()
                HSImageTextView(image: "3d8390c6a612991aac81b4bf9a00243e", text: "25")
            }
            .padding(.horizontal)
            .padding(.bottom, 27)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("About")
                    .font(.caption)
                    .foregroundStyle(.gray)
                Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod")
                    .font(.system(size: 16))
                    .bold()
            }
            .padding(.horizontal)
            
            Spacer()
            
            Button {
                
            } label: {
                Text("настроить профиль")
            }
            .frame(height: 60)
            .frame(maxWidth: .infinity)
            .foregroundStyle(.white)
            .background(Color("ColorPurp"))
            .cornerRadius(20)
            .padding()
        }
        .frame(maxHeight: .infinity, alignment: .topLeading)
    }
}

#Preview {
    ContentView()
}
