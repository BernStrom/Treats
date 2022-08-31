//
//  XDismissButton.swift
//  Treats
//
//  Created by Bern N on 8/27/22.
//

import SwiftUI

struct XDismissButton: View {
    var body: some View {
        ZStack {
            Circle()
                .frame(width: 30, height: 30)
                .foregroundStyle(.secondary)
                .opacity(0.6)
            
            Image(systemName: "xmark")
                .foregroundColor(Color(.label))
                .imageScale(.small)
                .frame(width: 44, height: 44)
        }
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton()
    }
}