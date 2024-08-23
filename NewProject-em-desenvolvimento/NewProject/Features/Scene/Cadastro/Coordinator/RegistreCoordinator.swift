//
//  RegistreCoordinator.swift
//  NewProject
//
//  Created by Kleiton Mendes on 13/07/24.
//

import UIKit

enum RegistreActions {
    case home
}

protocol RegistreCoordinatorProtocol: AnyObject {
    func navigate(to view: RegistreActions)
}

final class RegistreCoordinator {
    private let navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
}

extension RegistreCoordinator: RegistreCoordinatorProtocol {
    func navigate(to view: RegistreActions) {
        switch view {
        case .home:
            let homeFactory = HomeFactory.make(navigation)
            navigation.pushViewController(homeFactory, animated: true)
        }
    }
    
}
