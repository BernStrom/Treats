//
//  StringExt.swift
//  Treats
//
//  Created by Bern N on 8/28/22.
//

import Foundation

extension String {
    var isValidEmail: Bool {
        let emailFormat = "[A-Z0-9a-z._%+-]+@([A-Za-z0-9.-]+\\.[A-Za-z]{2,64}|[A-Za-z]{2,64})"
        let emailPredicate = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        return emailPredicate.evaluate(with: self)
    }
}
