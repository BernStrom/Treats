//
//  TreatsListView.swift
//  Treats
//
//  Created by Bern N on 8/22/22.
//

import SwiftUI

struct TreatsListView: View {
    @StateObject var viewModel = TreatsListViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.treats) { treat in
                TreatListCell(treat: treat)
            }
            .navigationTitle("🥞 treats.")
        }
        .onAppear {
            viewModel.getTreats()
        }
    }
}

struct TreatsListView_Previews: PreviewProvider {
    static var previews: some View {
        TreatsListView()
    }
}
