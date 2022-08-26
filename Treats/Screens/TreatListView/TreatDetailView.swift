//
//  TreatDetailView.swift
//  Treats
//
//  Created by Bern N on 8/26/22.
//

import SwiftUI

struct TreatDetailView: View {
    let treat: Treat
    
    var body: some View {
        VStack {
            Image("asian-flank-steak")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 225)
            
            VStack {
                Text(treat.name)
                    .font(.title2.weight(.semibold))
                
                Text(treat.description)
                    .multilineTextAlignment(.center)
                    .padding()
                
                HStack(spacing: 40) {
                    VStack(spacing: 5) {
                        Text("Calories")
                            .font(.caption.bold())
                        
                        Text("\(treat.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Carbs")
                            .font(.caption.bold())
                        
                        Text("\(treat.carbs)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    
                    VStack(spacing: 5) {
                        Text("Protein")
                            .font(.caption.bold())
                        
                        Text("\(treat.protein)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
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
                print("dismiss")
            } label: {
                ZStack {
                    Circle()
                        .frame(width: 30, height: 30)
                        .foregroundStyle(.secondary)
                        .opacity(0.6)
                    
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.small)
                        .frame(width: 44, height: 44)
                }
            }, alignment: .topTrailing
        )
    }
}

struct TreatDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TreatDetailView(treat: MockData.sampleTreat)
    }
}
