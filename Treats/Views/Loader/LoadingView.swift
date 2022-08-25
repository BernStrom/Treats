//
//  LoadingView.swift
//  Treats
//
//  Created by Bern N on 8/24/22.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .scaleEffect(1.5)
            .tint(Color("AccentColor"))
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
