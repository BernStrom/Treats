//
//  OrderViewModel.swift
//  Treats
//
//  Created by Bern N on 8/29/22.
//

import Foundation

final class OrderViewModel: ObservableObject {
    @Published var orderItems = MockData.orderItems
    
    func deleteItems(at offsets: IndexSet) {
        orderItems.remove(atOffsets: offsets)
    }
}
