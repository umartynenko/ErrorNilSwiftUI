//
//  DetailedPropertyCardView.swift
//  ErrorNilSwiftUI
//
//  Created by Юрий Мартыненко on 29.07.2024.
//

import SwiftUI

struct ButtonHeightPreferenceKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = max(value, nextValue())
    }
}

struct DetailedPropertyCardView: View {
    @State private var buttonHeight: CGFloat = 0
    
    let rows = [
        GridItem(.flexible(), spacing: 3),
        GridItem(.flexible(), spacing: 3)
    ]
    let image: String
    let name: String
    let price: String
    let address: String
    let apartmentType: [String: String]
    let apartmentRenovation: [String]
    
    var body: some View {
        VStack {
            
                VStack {
                    GeometryReader { geometry in
                        ZStack {
                            Image(image)
                                .resizable()
                                .scaledToFill()
                                .frame(width: geometry.size.width)
                                .clipped()
                            
                            LinearGradient(colors: [
                                .clear,
                                .clear,
                                .clear,
                                .clear,
                                .clear,
                                .black.opacity(0.1),
                                .black.opacity(0.5),
                                .black
                            ], startPoint: .bottom, endPoint: .top)
                            .clipShape(.rect(cornerRadius: 15))
                            
                            RoundedRectangle(cornerRadius: 15, style: .continuous)
                                .fill(Color.white)
                                .frame(width: geometry.size.width)
                                .offset(y: geometry.size.height - 15)
                        }
//                        .frame(height: geometry.size.height / 2)
                    }
                    .frame(height: 300) // фиксированная высота для картинки и наложения
                    ScrollView(.vertical) {
                    VStack(alignment: .leading, spacing: 17) {
                        Text(name)
                            .font(.system(size: 22, weight: .bold))
                            .padding(.horizontal)
                        
                        Text(price)
                            .font(.system(size: 22, weight: .bold))
                            .padding(.horizontal)
                        
                        Text(address)
                            .font(.system(size: 14, weight: .light))
                            .padding(.horizontal)
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: 4) {
                                ForEach(apartmentType.sorted(by: >), id: \.key) { key, value in
                                    ApartmentTypeView(type: key, price: value)
                                }
                            }
                        }
                        .padding(.horizontal)
                        
                        Text("Отделка квартир")
                            .font(.system(size: 22, weight: .bold))
                            .padding(.horizontal)
                        
                        LazyVGrid(columns: rows, spacing: 3) {
                            ForEach(apartmentRenovation.indices, id: \.self) { image in
                                Image(apartmentRenovation[image])
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(6)
                            }
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.bottom, buttonHeight / 4)
            }
            
            Spacer()
            
            HStack(alignment: .center, spacing: 12) {
                Button("Заказать звонок") {
                    
                }
                .frame(maxWidth: 190, minHeight: 45)
                .foregroundStyle(.blue)
                .background(.appButtonGray)
                .cornerRadius(10)
                
                Button("Позвонить") {
                    
                }
                .frame(maxWidth: 190, minHeight: 45)
                .foregroundStyle(.white)
                .background(Color.blue)
                .cornerRadius(10)
            }
            .frame(maxWidth: .infinity, alignment: .bottom)
            .padding(.top, -10)
            .padding(.horizontal)
            .padding(.bottom)
            .background(
                GeometryReader { geometry in
                    Color.clear
                        .preference(key: ButtonHeightPreferenceKey.self, value: geometry.size.height)
                }
            )
        }
        .onPreferenceChange(ButtonHeightPreferenceKey.self) { value in
            buttonHeight = value
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}


//#Preview {
//    DetailedPropertyCardView()
//}
