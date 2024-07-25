//
//  CustomCard.swift
//  ErrorNilSwiftUI
//
//  Created by Юрий Мартыненко on 25.07.2024.
//

import SwiftUI


struct CustomCard: Identifiable, Hashable {
    var id: UUID = .init()
    var image: String
}


var customCards: [CustomCard] = [
//    .init(image: "daniel-sessler-0MjapO_5WP0-unsplash"),
    .init(image: "daniel-sessler-1ZqxJX8Xzfc-unsplash"),
    .init(image: "daniel-sessler-86vqLiFkJao-unsplash"),
//    .init(image: "daniel-sessler-B4FHWfBI570-unsplash"),
//    .init(image: "daniel-sessler-c_b_0gSXfQo-unsplash"),
    .init(image: "daniel-sessler-df6SB6FIWpA-unsplash"),
    .init(image: "daniel-sessler-f4cGmJiC3GU-unsplash"),
    .init(image: "daniel-sessler-L9YwJnPEVfU-unsplash"),
    .init(image: "daniel-sessler-QEUybgt4nJw-unsplash"),
//    .init(image: "daniel-sessler-R6vSBA5srsY-unsplash"),
    .init(image: "daniel-sessler-R52TVaVMKJ4-unsplash"),
    .init(image: "daniel-sessler-uAnxVqzj8gk-unsplash")
]
