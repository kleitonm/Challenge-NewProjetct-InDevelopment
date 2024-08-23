//
//  LoginFactory.swift
//  NewProject
//
//  Created by Kleiton Mendes on 13/07/24.
//

import UIKit

enum LoginFactory {
    
    static func make(_ navigation: UINavigationController) -> UIViewController {
        let coordinator = LoginCoordinator(navigation: navigation)
        let viewModel = LoginViewModel(coordinator: coordinator)
        let vc = LoginViewController(viewModel: viewModel)
        return vc
    }
}
