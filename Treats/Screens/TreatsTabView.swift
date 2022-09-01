//
//  TreatsTabView.swift
//  Treats
//
//  Created by Bern N on 8/22/22.
//

import SwiftUI

struct TreatsTabView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        TabView {
            TreatsListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                        .environment(\.symbolVariants, .none)
                }
            
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                        .environment(\.symbolVariants, .none)
                }
            
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "bag")
                        .environment(\.symbolVariants, .none)
                }
                .badge(order.items.count)
        }
    }
}

struct TreatsTabView_Previews: PreviewProvider {
    static var previews: some View {
        TreatsTabView().environmentObject(Order())
    }
}
