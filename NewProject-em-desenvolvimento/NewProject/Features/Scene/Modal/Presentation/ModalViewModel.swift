//
//  ModalViewModel.swift
//  NewProject
//
//  Created by Kleiton Mendes on 28/07/24.
//

import Foundation

protocol ModalViewModelProtocol {
    func addToList()
}

final class ModalViewModel {
    private let coordinator: ModalCoordinatorProtocol?
    
    init(coordinator: ModalCoordinatorProtocol?) {
        self.coordinator = coordinator
    }
}

extension ModalViewModel: ModalViewModelProtocol {
    func addToList() {
        coordinator?.navigate(to: .add)
    }
    
}
