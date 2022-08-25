//
//  TreatListCell.swift
//  Treats
//
//  Created by Bern N on 8/23/22.
//

import SwiftUI

struct TreatListCell: View {
    let treat: Treat
    
    var body: some View {
        HStack(spacing: 20) {
            TreatRemoteImage(urlString: treat.imageURL)
                .scaledToFit()
                .frame(width: 120, height: 90)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(treat.name)
                    .font(.title2.weight(.medium))
                
                Text("$\(treat.price, specifier: "%.2f")")
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
        }
    }
}

struct TreatListCell_Previews: PreviewProvider {
    static var previews: some View {
        TreatListCell(treat: MockData.sampleTreat)
    }
}
