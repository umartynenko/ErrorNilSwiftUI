//
//  RealEstateCardView.swift
//  ErrorNilSwiftUI
//
//  Created by Юрий Мартыненко on 28.07.2024.
//

import SwiftUI

struct RealEstateCardView: View {
    let image: String
    let name: String
    let price: String
    let address: String
    let apartmentType: [String: String]
    let apartmentRenovation: [String]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            VStack(alignment: .leading, spacing: 14) {
                NavigationLink {
                    DetailedPropertyCardView(image: image, name: name, price: price, address: address, apartmentType: apartmentType, apartmentRenovation: apartmentRenovation)
                } label: {
                    ZStack(alignment: .topTrailing) {
                        Image(image)
                            .resizable()
                            .frame(height: 185)
                            .scaledToFit()
                            .cornerRadius(15)

                        
                        VStack {
                            Image(systemName: "bookmark")
                                .resizable()
                                .frame(width: 11, height: 11)
                                .foregroundStyle(.blue)
                        }
                        .frame(width: 29, height: 29)
                        .background(.white)
                        .cornerRadius(6)
                        .padding(16)
                    }
                }
                
                Text(name)
                    .font(.system(size: 22, weight: .bold))
                    .padding(.horizontal)
                
                Text(price)
                    .font(.system(size: 22, weight: .bold))
                    .padding(.horizontal)
                
                Text(address)
                    .font(.system(size: 14, weight: .light))
                    .padding(.horizontal)
            }
            
            ScrollView(.horizontal) {
                HStack(spacing: 4) {
                    ForEach(apartmentType.sorted(by: >), id: \.key) { key, value in
                        ApartmentTypeView(type: key, price: value)
                    }
                }
            }
            .padding(.horizontal)
        }
        .padding(.bottom, 26)
        .background(.white)
        .cornerRadius(15)
    }
}

#Preview {
    RealEstateCardView(
        image: "e8ca9376def55265d470627f66fa2f9f",
        name: "Ольховый Квартал",
        price: "от 8 029 445 ₽",
        address: "Москва, поселение Сосенское, деревня Столбово",
        apartmentType: ["Студия" : "8 млн"],
        apartmentRenovation: [
            "4f38315fc0cb4594a6e69fa99843b90e",
            "995dbdff8eead26563e9e7b10dfa8a6d",
            "6025d09d8aa8f89db1caa114e443e270",
            "2266832b94f8441afb045194df1ef404"
        ]
    )
}
