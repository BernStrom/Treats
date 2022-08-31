//
//  TreatsApp.swift
//  Treats
//
//  Created by Bern N on 8/22/22.
//

import SwiftUI

@main
struct TreatsApp: App {
    var order = Order()
    
    var body: some Scene {
        WindowGroup {
            TreatsTabView()
                .environmentObject(order)
        }
    }
}
