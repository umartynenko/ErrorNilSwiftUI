//
//  HSImageTextView.swift
//  ErrorNilSwiftUI
//
//  Created by Юрий Мартыненко on 18.07.2024.
//

import SwiftUI

struct HSImageTextView: View {
    var image: String
    var text: String
    
    var body: some View {
        HStack {
            Image(image)
                .resizable()
                .frame(width: 27, height: 27)
            Text(text)
                .font(.title2).bold()
            }
    }
}

#Preview {
    HSImageTextView(image: "1432c5708e7ee000d8bb93775961de72", text: "User Name")
}
