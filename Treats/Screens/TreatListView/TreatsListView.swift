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
        ZStack {
            NavigationView {
                List(viewModel.treats) { treat in
                    TreatListCell(treat: treat)
                }
                .navigationTitle("🥞 treats.")
            }
            .onAppear {
                viewModel.getTreats()
            }
            
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .alert(item: $viewModel.alertItem) { alertItem in
            Alert(title: alertItem.title, message: alertItem.message, dismissButton: alertItem.dismissButton)
        }
    }
}

struct TreatsListView_Previews: PreviewProvider {
    static var previews: some View {
        TreatsListView()
    }
}
