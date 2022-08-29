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

//MARK: - MOCK DATA

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
    
    static let orderItemOne = Treat(
        id: 0001,
        name: "Sample Treat 1",
        description: "Description for the yummy sample treat 1.",
        price: 9.99,
        imageURL: "",
        calories: 175,
        protein: 50,
        carbs: 15
    )
    
    static let orderItemTwo = Treat(
        id: 0002,
        name: "Sample Treat 2",
        description: "Description for the yummy sample treat 2.",
        price: 19.99,
        imageURL: "",
        calories: 175,
        protein: 50,
        carbs: 15
    )
    
    static let orderItemThree = Treat(
        id: 0003,
        name: "Sample Treat 3",
        description: "Description for the yummy sample treat 3.",
        price: 29.99,
        imageURL: "",
        calories: 175,
        protein: 50,
        carbs: 15
    )
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
}
