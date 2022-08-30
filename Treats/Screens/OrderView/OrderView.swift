//
//  OrderView.swift
//  Treats
//
//  Created by Bern N on 8/22/22.
//

import SwiftUI

struct OrderView: View {
    @StateObject var viewModel = OrderViewModel()
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    List {
                        ForEach(viewModel.orderItems) { treat in
                            TreatListCell(treat: treat)
                        }
                        .onDelete(perform: viewModel.deleteItems)
                    }
                    .listStyle(.plain)
                    
                    Button {
                        print("Order placed")
                    } label: {
                        Label("$30.97 - Place Order", systemImage: "bag.badge.plus")
                            .font(.callout.weight(.semibold))
                    }
                    .buttonStyle(.bordered)
                    .controlSize(.large)
                    .buttonBorderShape(.roundedRectangle(radius: 12))
                    .tint(Color("AccentColor"))
                    .padding(.bottom, 25)
                }
                
                if viewModel.orderItems.isEmpty {
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
        OrderView()
    }
}
