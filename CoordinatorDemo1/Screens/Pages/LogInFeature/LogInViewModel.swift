//
//  LogInViewModel.swift
//  CoordinatorDemo1
//
//  Created by Waleed Jebrin on 14/01/2025.
//

import SwiftUI

class LogInViewModel: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var isSecure: Bool = true
    let fullName: String?
    
    init(fullName: String?) {
        self.fullName = fullName
    }
}
