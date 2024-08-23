//
//  RegistreFactory.swift
//  NewProject
//
//  Created by Kleiton Mendes on 13/07/24.
//

import UIKit

enum RegistreFactory {
    
    static func make(_ navigation: UINavigationController) -> UIViewController {
        let coordinator = RegistreCoordinator(navigation: navigation)
        let viewModel = RegistreViewModel(coordinator: coordinator)
        let vc = RegistreViewController(viewModel: viewModel)
        return vc
    }
}
