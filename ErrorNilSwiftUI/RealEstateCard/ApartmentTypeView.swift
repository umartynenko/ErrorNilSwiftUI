//
//  ApartmentTypeView.swift
//  ErrorNilSwiftUI
//
//  Created by Юрий Мартыненко on 28.07.2024.
//

import SwiftUI

struct ApartmentTypeView: View {
    @State var type = ""
    @State var price: String = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(type)
                .font(.system(size: 9, weight: .light))
            Text("от \(price) ₽")
                .font(.system(size: 9))
        }
        .padding()
        .background(.appGray)
        .cornerRadius(6)
    }
}

#Preview {
    ApartmentTypeView()
}
