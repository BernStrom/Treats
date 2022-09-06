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
                        .onTapGesture {
                            viewModel.selectedTreat = treat
                            viewModel.isShowingDetailView = true
                        }
                }
                .listStyle(.plain)
                .navigationTitle("🥞 treats.")
                .disabled(viewModel.isShowingDetailView)
            }
            .onAppear(perform: viewModel.getTreats)
            .blur(radius: viewModel.isShowingDetailView ? 20 : 0)
            
            if viewModel.isShowingDetailView {
                TreatDetailView(
                    treat: viewModel.selectedTreat ?? MockData.treatNotFound,
                    isShowingDetailView: $viewModel.isShowingDetailView
                )
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
