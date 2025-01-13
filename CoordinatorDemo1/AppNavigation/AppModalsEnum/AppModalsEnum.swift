//
//  AppModals.swift
//  CoordinatorDemo
//
//  Created by Waleed Jebrin on 13/01/2025.
//

import SwiftUI

enum AppModalsEnum: String, Identifiable {
    var id: String { self.rawValue }
    
    case signup
    
    @ViewBuilder
    func build() -> some View {
        switch self {
        case .signup:
            SignUpView()
        }
    }
}
