//
//  ContentView.swift
//  CoordinatorDemo1
//
//  Created by Waleed Jebrin on 13/01/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var coordinator = MainCoordinator()
    
    var body: some View {
        NavigationStack(path: $coordinator.path) {
            AppPagesEnum.main.build()
                .navigationDestination(for: AppPagesEnum.self) { page in
                    page.build()
                }
                .sheet(item: $coordinator.sheet) { sheet in
                    sheet.build()
                }
                .fullScreenCover(item: $coordinator.modal) { modal in
                    modal.build()
                }
        }
        .environmentObject(coordinator)
    }
}

#Preview {
    ContentView()
}
