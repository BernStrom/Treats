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
                    NutritionInfo(title: "Calories", value: treat.calories)
                    NutritionInfo(title: "Carbs", value: treat.carbs)
                    NutritionInfo(title: "Protein", value: treat.protein)
                }
                .padding()
            }
            
            Spacer()
            
            Button {
                print("tapped")
            } label: {
                Label("$\(treat.price, specifier: "%.2f") - Add To Order", systemImage: "cart.badge.plus")
                    .font(.callout.weight(.semibold))
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle(radius: 12))
            .tint(Color("AccentColor"))
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
    let value: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .font(.caption.bold())
            
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
