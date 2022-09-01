//
//  OrderView.swift
//  Treats
//
//  Created by Bern N on 8/22/22.
//

import SwiftUI

struct OrderView: View {
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(order.items) { treat in
                            TreatListCell(treat: treat)
                        }
                        .onDelete(perform: order.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("Order placed")
                    } label: {
                        Label("\(order.totalPrice, specifier: "%.2f") - Place Order", systemImage: "bag.badge.plus")
                            .font(.callout.weight(.semibold))
                    }
                    .modifier(StandardButtonStyle())
                    .padding(.bottom, 25)
                }
                
                if order.items.isEmpty {
                    EmptyState(
                        imageName: "empty-order",
                        message: "You have no items in your order.\nLets add a treat or two to satiate those cravings!"
                    )
                }
            }
            .navigationTitle("🧾 Order")
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static var previews: some View {
        OrderView().environmentObject(Order())
    }
}
