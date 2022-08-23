//
//  TreatsListViewModel.swift
//  Treats
//
//  Created by Bern N on 8/23/22.
//

import Foundation

final class TreatsListViewModel: ObservableObject {
    @Published var treats = [Treat]()
    
    func getTreats() {
        NetworkManager.shared.getTreats { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let treats):
                    self.treats = treats
                case .failure(let error):
                    print(error.localizedDescription)
                }
            }
        }
    }
}
