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
    //MARK: - Network Alerts
    
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
    
    
    //MARK: - Account Alerts
    
    static let invalidForm = AlertItem(
        title: Text("Invalid Form Submission"),
        message: Text("Please ensure all required fields in the form have been filled out."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidEmail = AlertItem(
        title: Text("Invalid Email"),
        message: Text("Please ensure your email is in a legible format."),
        dismissButton: .default(Text("OK"))
    )
    
    static let userSaveSuccess = AlertItem(
        title: Text("Profile Saved"),
        message: Text("Your profile information was successfully saved."),
        dismissButton: .default(Text("OK"))
    )
    
    static let invalidUserData = AlertItem(
        title: Text("Profile Error"),
        message: Text("There was a problem while saving or retrieving your profile."),
        dismissButton: .default(Text("OK"))
    )
}
