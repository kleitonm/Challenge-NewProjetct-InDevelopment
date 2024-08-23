//
//  ModalFactory.swift
//  NewProject
//
//  Created by Kleiton Mendes on 28/07/24.
//

import UIKit

enum ModalFactory {
    static func make(_ navigation: UINavigationController) -> UIViewController {
        let coordinator = ModalCoordinator(navigation: navigation)
        let viewModel = ModalViewModel(coordinator: coordinator)
        let vc = ModalViewController(viewModel: viewModel)
        return vc
    }
}

