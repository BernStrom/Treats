//
//  Alert.swift
//  Treats
//
//  Created by Bern N on 8/24/22.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidURL = AlertItem(
        title: Text("Server Error"),
        message: Text("There was an issue connecting to the server. If this continues, please contact support."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidData = AlertItem(
        title: Text("Server Error"),
        message: Text("Invalid data received from server. Please contact support to report the issue."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidResponse = AlertItem(
        title: Text("Server Error"),
        message: Text("Invalid response from server. Please try again later or contact support."),
        dismissButton: .default(Text("OK"))
    )
    
    static let unableToComplete = AlertItem(
        title: Text("Server Error"),
        message: Text("Unable to establish connection request at this time. Please check your internet connection or contact your ISP for support."),
        dismissButton: .default(Text("OK"))
    )
}
