//
//  DeveloperData.swift
//  ErrorNilSwiftUI
//
//  Created by Юрий Мартыненко on 29.07.2024.
//

import Foundation


struct DeveloperData: Identifiable {
    let id: UUID = UUID()
    let image: String
    let name: String
    let price: String
    let address: String
    let apartmentRenovation: [String]
    let apartmentType: [String: String]
}
