//
//  TreatDetailView.swift
//  Treats
//
//  Created by Bern N on 8/26/22.
//

import SwiftUI

struct TreatDetailView: View {
    let treat: Treat
    @Binding var isShowingDetailView: Bool
    @EnvironmentObject var order: Order
    
    var body: some View {
        VStack {
            TreatRemoteImage(urlString: treat.imageURL)
                .scaledToFit()
                .frame(width: 300, height: 225)
            
            VStack {
                Text(treat.name)
                    .font(.title2.weight(.semibold))
                
                Text(treat.description)
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", value: "\(treat.calories) kcal")
                    NutritionInfo(title: "Carbs", value: "\(treat.carbs) g")
                    NutritionInfo(title: "Protein", value: "\(treat.protein) g")
                }
                .padding()
            }
            
            Spacer()
            
            Button {
                order.add(treat)
                isShowingDetailView = false
            } label: {
                Label("$\(treat.price, specifier: "%.2f") - Add To Order", systemImage: "cart.badge.plus")
                    .font(.callout.weight(.semibold))
            }
            .modifier(StandardButtonStyle())
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(.regularMaterial)
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(
            Button {
                isShowingDetailView = false
            } label: {
                XDismissButton()
            }, alignment: .topTrailing
        )
    }
}

struct TreatDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TreatDetailView(treat: MockData.sampleTreat, isShowingDetailView: .constant(true))
    }
}

struct NutritionInfo: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.caption.bold())
            
            Text(value)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
