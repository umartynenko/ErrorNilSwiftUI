//
//  ContentView.swift
//  ErrorNilSwiftUI
//
//  Created by Юрий Мартыненко on 18.07.2024.
//

import SwiftUI


struct ContentView: View {
    @State var userName: String = "Uriy"
    @State private var searchText: String = ""
    
    var body: some View {
        VStack(alignment: .leading) {
            ScrollView(showsIndicators: false) {
                HStack {
                    Button {
                        print("Button tapped")
                    } label: {
                        Image("c9d66db0ebe9b7b7d9d369e8da5f22cc")
                            .resizable()
                            .frame(width: 38, height: 38)
                            .scaledToFit()
                    }
                    
                    Spacer()
                    
                    Image("fd1c58156f81fd401692cf2e2db52e2f")
                        .resizable()
                        .frame(width: 55, height: 55)
                        .scaledToFit()
                        .clipShape(.circle)
                }
                .padding(.bottom, 40)
                
                VStack(alignment: .leading, spacing: 14) {
                    HStack {
                        Text("Hello")
                        Text(userName)
                    }
                    .font(.title3)
                    .fontWeight(.bold)
                    
                    Text("Find your specialist")
                        .font(.title)
                        .fontWeight(.bold)
                }
                .padding(.bottom, 56)
                
                TextField("search", text: $searchText)
                    .customTextField("magnifyingglass", isButton: true, colorButton: Color("colorButtonPaperplane"), searchText: $searchText)
                    .clipShape(.capsule)
                    .padding(.bottom, 48)
                
                VStack(alignment: .leading, spacing: 40) {
                    HStack(spacing: 17) {
                        CustomButtonView(imageName: "346db331a0c1ba5994f5ed4b92c1073c", text: "Place", color: Color("colorCustomButton1"))
                        CustomButtonView(imageName: "391a71506ec110dd03d81eee6ca83886", text: "Phone", color: Color("colorCustomButton2"))
                        CustomButtonView(imageName: "2de71f841a32069866302957c19e4cae", text: "User", color: Color("colorCustomButton3"))
                    }
                    
                    HStack {
                        Text("Top Doctor")
                            .font(.title)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Button {
                        } label: {
                            Label("See all", systemImage: "")
                        }
                    }
                    
                    VStack(spacing: 14) {
                        UserCardView(imageName: "803cefb822dd40cbce102bfd06057001")
                        UserCardView(imageName: "803cefb822dd40cbce102bfd06057001")
                        UserCardView(imageName: "803cefb822dd40cbce102bfd06057001")
                    }
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
            .padding(.horizontal)
            .background(Color("lyghtGray"))
        }
    }
}


fileprivate extension View {
    
    @ViewBuilder
    func customTextField(
        _ icon: String? = nil,
        _ paddingTop: CGFloat = 0,
        _ paddingBottom: CGFloat = 0,
        isButton: Bool = false,
        colorButton: Color = .blue,
        searchText: Binding<String>
    ) -> some View {
        HStack {
            if let icon {
                Image(systemName: icon)
                    .font(.title3)
                    .foregroundStyle(.gray)
            }
            
            self
            
            if isButton {
                Spacer()
                Button {
                    print(searchText.wrappedValue)
                } label: {
                    Image(systemName: "paperplane.circle.fill")
                        .font(.title)
                        .background(colorButton)
                        .foregroundStyle(.white)
                        .rotationEffect(.degrees(45))
                }
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 12)
        .background(.bar, in: .capsule)
        .padding(.top, paddingTop)
        .padding(.bottom, paddingBottom)
        .listRowInsets(.init(top: 10, leading: 0, bottom: 0, trailing: 0))
        .listRowSeparator(.hidden )
        .symbolRenderingMode(.hierarchical)
    }
}


#Preview {
    ContentView()
}
