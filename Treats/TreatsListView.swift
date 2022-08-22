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
            Text("Treats List View")
                .navigationTitle("🥞 Treats")
        }
    }
}

struct TreatsListView_Previews: PreviewProvider {
    static var previews: some View {
        TreatsListView()
    }
}
