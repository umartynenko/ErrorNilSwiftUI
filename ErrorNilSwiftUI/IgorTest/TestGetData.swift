//
//  TestGetData.swift
//  ErrorNilSwiftUI
//
//  Created by Юрий Мартыненко on 29.07.2024.
//

import SwiftUI

struct TestGetData: View {
    let items = TableItemModel.mokeData()
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ForEach(items, id: \.name) { item in
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.headline)
                        Text(item.price)
                            .font(.subheadline)
                        Text(item.description)
                            .font(.body)
                        
                        ForEach(item.appartment, id: \.name) { appartment in
                            HStack {
                                Text(appartment.name)
                                Spacer()
                                Text(appartment.price)
                            }
                        }
                    }
                    .padding()
                }
            }
            .padding()
        }
    }
}

#Preview {
    TestGetData()
}
