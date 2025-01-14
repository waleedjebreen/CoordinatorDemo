//
//  MainView.swift
//  CoordinatorDemo1
//
//  Created by Waleed Jebrin on 13/01/2025.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject private var coordinator: MainCoordinator
    
    @State private var fullName: String = ""
    
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Please enter your name to continue")
                    .font(.body)
                    .fontWeight(.semibold)
                
                TextField("Enter your full name", text: $fullName)
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .cornerRadius(5)
            }
            .padding(.vertical, 20)
            
            Spacer()
            Button {
                coordinator.push(page: .login(state: .init(fullname: fullName)))
            } label: {
                Text("Get Started")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .padding(16)
            }
            .frame(maxWidth: .infinity)
            .background(fullName.isEmpty ? Color.gray : Color.blue)
            .clipShape(.buttonBorder)
            .disabled(fullName.isEmpty)
        }
        .padding(16)
    }
}

#Preview {
    MainView()
}
