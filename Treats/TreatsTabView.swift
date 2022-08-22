//
//  TreatsTabView.swift
//  Treats
//
//  Created by Bern N on 8/22/22.
//

import SwiftUI

struct TreatsTabView: View {
    var body: some View {
        TabView {
            TreatsListView()
                .tabItem {
                    Image(systemName: "house")
                        .environment(\.symbolVariants, .none)
                    Text("Home")
                }
            
            AccountView()
                .tabItem {
                    Image(systemName: "person")
                        .environment(\.symbolVariants, .none)
                    Text("Account")
                }
            
            OrderView()
                .tabItem {
                    Image(systemName: "bag")
                        .environment(\.symbolVariants, .none)
                    Text("Order")
                }
        }
    }
}

struct TreatsTabView_Previews: PreviewProvider {
    static var previews: some View {
        TreatsTabView()
    }
}
