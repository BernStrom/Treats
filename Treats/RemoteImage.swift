//
//  RemoteImage.swift
//  Treats
//
//  Created by Bern N on 8/25/22.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image = Image("food-placeholder")
    
    func load(fromURL urlString: String) {
        NetworkManager.shared.downloadImage(fromURL: urlString) { uiImage in
            guard let uiImage = uiImage else { return }
            
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct TreatRemoteImage: View {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View {
        imageLoader.image
            .resizable()
            .onAppear {
                imageLoader.load(fromURL: urlString)
            }
    }
}
