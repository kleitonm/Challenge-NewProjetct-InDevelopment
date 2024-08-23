//
//  RegistreViewModel.swift
//  NewProject
//
//  Created by Kleiton Mendes on 13/07/24.
//

import UIKit

protocol RegistreViewModelProtocol: AnyObject {
    func goToHome()
}

final class RegistreViewModel {
    private let coordinator: RegistreCoordinatorProtocol?
    
    init(coordinator: RegistreCoordinatorProtocol?) {
        self.coordinator = coordinator
    }
}

extension RegistreViewModel: RegistreViewModelProtocol {
    func goToHome() {
        coordinator?.navigate(to: .home)
    }
    
    
}
