//
//  TreatsListView.swift
//  Treats
//
//  Created by Bern N on 8/22/22.
//

import SwiftUI

struct TreatsListView: View {
    var body: some View {
        NavigationView {
            List(MockData.treats) { treat in
                TreatListCell(treat: treat)
            }
            .navigationTitle("🥞 treats.")
        }
    }
}

struct TreatsListView_Previews: PreviewProvider {
    static var previews: some View {
        TreatsListView()
    }
}
