//
//  ModalCoordinator.swift
//  NewProject
//
//  Created by Kleiton Mendes on 28/07/24.
//

import UIKit

enum ModalActions {
case add
}

protocol ModalCoordinatorProtocol {
    func navigate(to view: ModalActions)
}

final class ModalCoordinator {
    private var navigation = UINavigationController()
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
}

extension ModalCoordinator: ModalCoordinatorProtocol {
    
    func navigate(to view: ModalActions) {
        switch view {
        case .add:
            navigation.dismiss(animated: true)
        }
    }
    
    
}

