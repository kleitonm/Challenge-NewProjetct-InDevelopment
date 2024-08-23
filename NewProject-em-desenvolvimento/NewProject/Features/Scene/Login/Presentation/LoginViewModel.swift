//
//  LoginViewModel.swift
//  NewProject
//
//  Created by Kleiton Mendes on 13/07/24.
//

import UIKit

protocol LoginViewModelProtocol {
    func goToHome()
    func goToRegistre()
}

final class LoginViewModel {
    private let coordinator: LoginCoordinatorProtocol?
    
    init(coordinator: LoginCoordinatorProtocol?) {
        self.coordinator = coordinator
    }
}

extension LoginViewModel: LoginViewModelProtocol {
    func goToHome() {
        coordinator?.navigate(to: .home)
    }
    
    func goToRegistre() {
        coordinator?.navigate(to: .registre)
    }
    
 
    
    
}
