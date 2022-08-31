//
//  Order.swift
//  Treats
//
//  Created by Bern N on 8/31/22.
//

import Foundation

final class Order: ObservableObject {
    @Published var items = [Treat]()
    
    func add(_ treat: Treat) {
        items.append(treat)
    }
    
    func deleteItems(at offsets: IndexSet) {
        items.remove(atOffsets: offsets)
    }
}
