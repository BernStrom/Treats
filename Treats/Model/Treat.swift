//
//  Treat.swift
//  Treats
//
//  Created by Bern N on 8/23/22.
//

import Foundation

struct Treat: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct TreatResponse: Decodable {
    let request: [Treat]
}

struct MockData {
    static let sampleTreat = Treat(
        id: 0001,
        name: "Sample Treat",
        description: "Description for the yummy sample treat.",
        price: 9.99,
        imageURL: "",
        calories: 175,
        protein: 50,
        carbs: 15
    )
    
    static let treats = [sampleTreat, sampleTreat, sampleTreat, sampleTreat]
}
