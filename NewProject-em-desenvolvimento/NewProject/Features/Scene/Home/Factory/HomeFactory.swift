//
//  HomeFactory.swift
//  NewProject
//
//  Created by Kleiton Mendes on 13/07/24.
//

import UIKit

enum HomeFactory {
    static func make(_ navigation: UINavigationController) -> UIViewController {
        let coordinator = HomeCoordinator(navigation: navigation)
        let viewModel = HomeViewModel(coordinator: coordinator)
        let vc = HomeViewController(viewModel: viewModel)
        return vc
    }
}
