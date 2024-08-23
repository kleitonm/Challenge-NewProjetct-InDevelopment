//
//  ViewController.swift
//  NewProject
//
//  Created by Kleiton Mendes on 11/07/24.
//

import UIKit

final class LoginViewController: UIViewController {
    
    // MARK: Constante
    private var viewModel: LoginViewModelProtocol?
    
    private lazy var customView: LoginView = {
        let view = LoginView()
        return view
    }()
    
    init(viewModel: LoginViewModelProtocol? = nil) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.delegate = self
        view.backgroundColor = .yellow
    }
    
    override func loadView() {
        view = customView
    }

}

extension LoginViewController: LoginViewProtocol {
    func didTapLogin() {
        if customView.nameTextFiel.text == "Jhon" || customView.passwordTextFiel.text == "123456" {
            viewModel?.goToHome()
        } else {
            print("Login ou senha não são válidas")
        }
    }
    
    func didTapRegistre() {
        viewModel?.goToRegistre()
    }
    
}

