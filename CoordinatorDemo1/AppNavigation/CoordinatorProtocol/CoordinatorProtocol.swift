//
//  CoordinatorProtocol.swift
//  CoordinatorDemo
//
//  Created by Waleed Jebrin on 13/01/2025.
//

import SwiftUI

protocol CoordinatorProtocol {
    var path: NavigationPath { get set }
    var sheet: AppSheetsEnum? { get set }
    var modal: AppModalsEnum? { get set }
    
    func push(page: AppPagesEnum)
    func pop()
    func popToRoot()
    
    func presentSheet(sheet: AppSheetsEnum)
    func dismissSheet()
    
    func presentModal(modal: AppModalsEnum)
    func dismissModal()
}
