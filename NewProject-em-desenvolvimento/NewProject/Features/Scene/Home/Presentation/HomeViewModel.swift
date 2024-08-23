//
//  HomeViewModel.swift
//  NewProject
//
//  Created by Kleiton Mendes on 13/07/24.
//

import UIKit

protocol HomeViewModelProtocol {
    func goToModal()
}

final class HomeViewModel {
    private let coordinator: HomeCoordinatorProtocol?
    
    init(coordinator: HomeCoordinatorProtocol?) {
        self.coordinator = coordinator
    }
}

extension HomeViewModel: HomeViewModelProtocol {
    func goToModal() {
        coordinator?.navigate(to: .modal)
    }
}
