//
//  AccountView.swift
//  Treats
//
//  Created by Bern N on 8/22/22.
//

import SwiftUI

struct AccountView: View {
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var email = ""
    @State private var birthdate = Date()
    @State private var extraNapkins = false
    @State private var frequentRefills = false
    
    var body: some View {
        NavigationView {
            Form {
                Section("Personal Info") {
                    TextField("First Name", text: $firstName)
                        .textContentType(.givenName)
                    
                    TextField("Last Name", text: $lastName)
                        .textContentType(.familyName)
                    
                    TextField("Email", text: $email)
                        .textContentType(.emailAddress)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.none)
                        .disableAutocorrection(true)
                    
                    DatePicker("Birthday", selection: $birthdate, displayedComponents: .date)
                    
                    Button {
                        print("Changes saved")
                    } label: {
                        Text("Save Changes")
                    }
                }
                
                Section("Requests") {
                    Toggle("Extra Napkins", isOn: $extraNapkins)
                    Toggle("Frequent Refills", isOn: $frequentRefills)
                }
                .toggleStyle(SwitchToggleStyle(tint: Color("AccentColor")))
            }
            .navigationTitle("🎅 Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
