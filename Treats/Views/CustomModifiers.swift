//
//  CustomModifiers.swift
//  Treats
//
//  Created by Bern N on 9/1/22.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .controlSize(.large)
            .buttonBorderShape(.roundedRectangle(radius: 12))
            .tint(Color("AccentColor"))
    }
}
