//
//  AppPages.swift
//  CoordinatorDemo
//
//  Created by Waleed Jebrin on 13/01/2025.
//

import SwiftUI

enum AppPagesEnum: Hashable {
    case main
    case login(state: LogInState)
    
    @ViewBuilder
    func build() -> some View {
        switch self {
        case .main:
            MainView()
        case .login(let state):
            LogInView(state: state)
        }
    }
}
