//
//  DateExt.swift
//  Treats
//
//  Created by Bern N on 9/3/22.
//

import Foundation

extension Date {
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: self)!
    }
    
    var oneHundredTenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: self)!
    }
}
