//
//  MainCoordinator.swift
//  CoordinatorDemo1
//
//  Created by Waleed Jebrin on 13/01/2025.
//

import SwiftUI

class MainCoordinator: ObservableObject, CoordinatorProtocol {
    @Published var path: NavigationPath = .init()
    @Published var sheet: AppSheetsEnum?
    @Published var modal: AppModalsEnum?
    
    func push(page: AppPagesEnum) {
        path.append(page)
    }
    func pop() {
        path.removeLast()
    }
    func popToRoot(){
        path.removeLast(path.count)
    }
    
    func presentSheet(sheet: AppSheetsEnum){
        self.sheet = sheet
    }
    func dismissSheet(){
        self.sheet = nil
    }
    
    func presentModal(modal: AppModalsEnum){
        self.modal = modal
    }
    func dismissModal(){
        self.modal = nil
    }
}
