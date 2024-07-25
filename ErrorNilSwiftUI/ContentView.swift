//
//  ContentView.swift
//  ErrorNilSwiftUI
//
//  Created by Юрий Мартыненко on 18.07.2024.
//

import SwiftUI


struct ContentView: View {
    @State private var currentDate = Date()
    @State private var searchText: String = ""
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.left")
                    .foregroundStyle(.white)
                    .font(.system(size: 25))
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text("\(currentDate.formatted(.dateTime.day(.twoDigits).month(.wide)))")
                        .foregroundStyle(.white)
                        .font(.system(size: 36, weight: .bold))
                    Text("\(currentDate.formatted(.dateTime.year(.defaultDigits))) year")
                        .foregroundStyle(.white)
                }
                
                Spacer()
                
                Image(systemName: "text.alignright")
                    .foregroundStyle(.white)
                    .font(.system(size: 25))
            }
            .padding(.horizontal, 30)
            ScrollView(.vertical) {
                VStack(spacing: 32) {
                    GeometryReader { geometry in
                        let size = geometry.size
                        
                        ScrollView(.horizontal) {
                            HStack(spacing: 15) {
                                ForEach(customCards) { card in
                                    GeometryReader { proxy in
                                        let cardSize = proxy.size
                                        let minX = proxy.frame(in: .scrollView).minX - 30
                                        
                                        ZStack(alignment: .topTrailing) {
                                            Image(card.image)
                                                .resizable()
                                                .aspectRatio(contentMode: .fill)
                                                .offset(x: -minX)
                                                .frame(width: cardSize.width, height: cardSize.height)
                                                .clipShape(.rect(cornerRadius: 30))
                                                .shadow(color: .white.opacity(0.25), radius: 8, x: 5, y: 10)
                                                .shadow(color: .white.opacity(0.25), radius: 8, x: -5, y: 0)
                                            
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
                                            .clipShape(.rect(cornerRadius: 30))
                                            
                                            Image(systemName: "ellipsis")
                                                .foregroundStyle(.white)
                                                .font(.system(size: 31, weight: .bold))
                                                .padding(.top, 22)
                                                .padding(.trailing, 19)
                                            
                                        }
                                    }
                                    .frame(width: size.width - 200, height: size.height - 20)
                                    .scrollTransition(.interactive, axis: .horizontal) {
                                        view, phase in
                                        view
                                            .scaleEffect(phase.isIdentity ? 1 : 0.95)
                                    }
                                }
                            }
                            .scrollTargetLayout()
                            .frame(height: size.height, alignment: .center)
                        }
                        .scrollTargetBehavior(.viewAligned)
                        .safeAreaPadding(.horizontal, 100)
                        .scrollIndicators(.hidden)
                        .frame(maxWidth: .infinity)
                    }
                    .frame(height: 518)
                    .padding(.horizontal, -60)
                    .padding(.top, 30)
                    
                    ScrollView(.horizontal) {
                        HStack(spacing: 13) {
                            Button {
                                
                            } label: {
                                Text("Природа")
                            }
                            .frame(width: 112, height: 34)
                            .background(Color("ButtonHW3"))
                            .clipShape(.capsule)
                            
                            Button {
                                
                            } label: {
                                Text("Природа")
                            }
                            .frame(width: 112, height: 34)
                            .background(Color("ButtonHW3"))
                            .clipShape(.capsule)
                            
                            Button {
                                
                            } label: {
                                Text("Природа")
                            }
                            .frame(width: 112, height: 34)
                            .background(Color("ButtonHW3"))
                            .clipShape(.capsule)
                            
                            Button {
                                
                            } label: {
                                Text("Природа")
                            }
                            .frame(width: 112, height: 34)
                            .background(Color("ButtonHW3"))
                            .clipShape(.capsule)
                        }
                    }
                    .scrollTargetBehavior(.viewAligned)
                    .scrollIndicators(.hidden)
                    .padding(.leading, 30)
                    .scrollIndicators(.hidden)
                }
                .scrollIndicators(.hidden)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit")
                    .foregroundStyle(.white)
                    .padding(.top, 65)
                    .padding(.horizontal, 55)
                    .padding(.bottom, 90)
                
                VStack(spacing: 14) {
                    VStack(alignment: .leading) {
                        Text("16.12.23")
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        Text("LUt enim ad minim veniam, quis nostrud exercit ation ullamco laboris nisi ")
                            .foregroundStyle(.white)
                    }
                    .padding(.horizontal)
                    .padding(.vertical)
                    
                    VStack(alignment: .leading) {
                        Text("16.12.23")
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        Text("LUt enim ad minim veniam, quis nostrud exercit ation ullamco laboris nisi ")
                            .foregroundStyle(.white)
                    }
                    .padding(.horizontal)
                    .padding(.vertical)
                }
                .padding(.horizontal, 30)
            }
            
            HStack {
                let myWidth = UIScreen.main.bounds.width
                
                TextField("Добавить комментарий", text: .constant(searchText))
                    .frame(width: myWidth - 60)
            }
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            .background(.white, in: .capsule)
            }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(.black)
        
    }
}


#Preview {
    ContentView()
}
