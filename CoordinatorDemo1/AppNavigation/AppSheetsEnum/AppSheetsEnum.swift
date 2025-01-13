//
//  AppSheetsEnum.swift
//  CoordinatorDemo
//
//  Created by Waleed Jebrin on 13/01/2025.
//

import SwiftUI

enum AppSheetsEnum: String, Identifiable {
    var id: String { self.rawValue }
    
    case forgotPassword
    
    @ViewBuilder
    func build() -> some View {
        switch self {
        case .forgotPassword:
            ForgotPasswordView()
        }
    }
}
