//
//  ContentView.swift
//  ErrorNilSwiftUI
//
//  Created by Юрий Мартыненко on 18.07.2024.
//

import SwiftUI


struct ContentView: View {
    init() {
        UIScrollView.appearance().bounces = false
    }
    
    @State private var developers: [DeveloperData] = getDevelopers()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 19) {
                    Text("\(developers.count) предложения")
                    ForEach(developers) { data in
                        VStack(spacing: 10) {
                            RealEstateCardView(
                                image: data.image,
                                name: data.name,
                                price: data.price,
                                address: data.address,
                                apartmentType: data.apartmentType,
                                apartmentRenovation: data.apartmentRenovation
                            )
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            .padding()
            .background(.appGray)
            .scrollIndicators(.hidden)
        }
        .accentColor(.white)
    }
}


func getDevelopers() -> [DeveloperData] {
    [
        DeveloperData(
            image: "e8ca9376def55265d470627f66fa2f9f",
            name: "Ольховый Квартал", price: "от 8 029 445 ₽",
            address: "Москва, поселение Сосенское, деревня Столбово",
            apartmentRenovation: [
                "4f38315fc0cb4594a6e69fa99843b90e",
                "995dbdff8eead26563e9e7b10dfa8a6d",
                "6025d09d8aa8f89db1caa114e443e270",
                "2266832b94f8441afb045194df1ef404"
            ],
            apartmentType: [
                "Студия": "8 млн",
                "1-комн.": "10,1 млн",
                "2-комн.": "11,4 млн"
            ]),
        DeveloperData(
            image: "8901d301c6c32b34caa59e94c98e3e44",
            name: "Новое Видное",
            price: "от 4 735 485 ₽",
            address: "Городское поселение Горки Ленинские, Ленинский городской округ, Московская область",
            apartmentRenovation: [
                "4f38315fc0cb4594a6e69fa99843b90e",
                "995dbdff8eead26563e9e7b10dfa8a6d",
                "6025d09d8aa8f89db1caa114e443e270",
                "2266832b94f8441afb045194df1ef404"
            ],
            apartmentType: [
                "Студия" : "4,7 млн",
                "1-комн.": "5,6 млн",
                "2-комн.": "6,3 млн"
            ])
    ]
}


#Preview {
    ContentView()
}
