//
//  RegisterViewModel.swift
//  iosApp
//
//  Created by User on 24/11/25.
//  Copyright © 2025 orgName. All rights reserved.
//

import Foundation

class RegisterViewModel: ObservableObject {
    // Input
    @Published var username = ""
    @Published var password = ""
    @Published var passwordVerify = ""
    
    // Output
    @Published var isUserNameLengthValid = false
    @Published var isPasswordLengthValid = false
    @Published var isPasswordCapitalLetter = false
    @Published var isPasswordConfirmValid = false
}
