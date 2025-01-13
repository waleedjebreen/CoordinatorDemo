//
//  MainView.swift
//  CoordinatorDemo1
//
//  Created by Waleed Jebrin on 13/01/2025.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject private var coordinator: MainCoordinator
    
    var body: some View {
        VStack {
            Spacer()
            Button {
                coordinator.push(page: .login)
            } label: {
                Text("Get Started")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .padding(16)
            }
            .frame(maxWidth: .infinity)
            .background(Color.blue)
            .clipShape(.buttonBorder)
        }
        .padding(16)
    }
}

#Preview {
    MainView()
}
