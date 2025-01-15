//
//  AppPages.swift
//  CoordinatorDemo
//
//  Created by Waleed Jebrin on 13/01/2025.
//

import SwiftUI

enum AppPagesEnum: Hashable {
    case main
    case login(input: LogInInput)
    
    @ViewBuilder
    func build() -> some View {
        switch self {
        case .main:
            MainView()
        case .login(let input):
            LogInView(state: input)
        }
    }
}
