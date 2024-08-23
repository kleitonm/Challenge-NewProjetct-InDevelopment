//
//  HomeCoordinator.swift
//  NewProject
//
//  Created by Kleiton Mendes on 13/07/24.
//

import UIKit

enum HomeActions {
    case back
    case modal
}

protocol HomeCoordinatorProtocol {
    func navigate(to view: HomeActions)
}

final class HomeCoordinator {
    private var navigation = UINavigationController()
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
}

extension HomeCoordinator: HomeCoordinatorProtocol {
    func navigate(to view: HomeActions) {
        switch view {
        case .back:
            break
        case .modal:
            break
        }
    }
    
    
}
