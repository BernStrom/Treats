//
//  TreatsListView.swift
//  Treats
//
//  Created by Bern N on 8/22/22.
//

import SwiftUI

struct TreatsListView: View {
    @StateObject var viewModel = TreatsListViewModel()
    @State private var selectedTreat: Treat?
    @State private var isShowingDetailView = false
    
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.treats) { treat in
                    TreatListCell(treat: treat)
                        .onTapGesture {
                            selectedTreat = treat
                            isShowingDetailView = true
                        }
                }
                .navigationTitle("🥞 treats.")
                .disabled(isShowingDetailView)
            }
            .onAppear {
                viewModel.getTreats()
            }
            .blur(radius: isShowingDetailView ? 20 : 0)
            
            if isShowingDetailView {
                TreatDetailView(treat: selectedTreat ?? MockData.sampleTreat, isShowingDetailView: $isShowingDetailView)
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
