//
//  TreatsListViewModel.swift
//  Treats
//
//  Created by Bern N on 8/23/22.
//

import Foundation

final class TreatsListViewModel: ObservableObject {
    @Published var treats = [Treat]()
    @Published var alertItem: AlertItem?
    @Published var isLoading = false
    @Published var selectedTreat: Treat?
    @Published var isShowingDetailView = false
    
    func getTreats() {
        isLoading = true
        
        NetworkManager.shared.getTreats { [self] result in
            DispatchQueue.main.async {
                isLoading = false
                
                switch result {
                case .success(let treats):
                    self.treats = treats
                    
                case .failure(let error):
                    switch error {
                    case .invalidURL:
                        alertItem = AlertContext.invalidURL
                        
                    case .invalidResponse:
                        alertItem = AlertContext.invalidResponse
                        
                    case .invalidData:
                        alertItem = AlertContext.invalidData
                        
                    case .unableToComplete:
                        alertItem = AlertContext.unableToComplete
                    }
                }
            }
        }
    }
}
