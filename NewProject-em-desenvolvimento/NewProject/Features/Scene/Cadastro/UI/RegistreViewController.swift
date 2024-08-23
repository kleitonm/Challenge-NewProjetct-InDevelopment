//
//  RegistreViewController.swift
//  NewProject
//
//  Created by Kleiton Mendes on 13/07/24.
//

import UIKit

final class RegistreViewController: UIViewController {
    
    // MARK: Constante
    private let viewModel: RegistreViewModelProtocol?
    
    // MARK: UI
    private lazy var customView: RegistreView = {
        let view = RegistreView()
        return view
    }()
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        customView.delegate = self
        view.backgroundColor = .yellow
    }
    
    override func loadView() {
        view = customView
    }
    
    // MARK: Init
    init(viewModel: RegistreViewModelProtocol?) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Private func
    private func configNavigation() {
        navigationItem.title = "Cadastro"
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.leftBarButtonItem?.title = "Voltar"
        navigationItem.leftBarButtonItem?.tintColor = .white
    }
}

extension RegistreViewController: RegistreViewProtocol {
    func didTapRegistre() {
        if customView.passwordTextFiel.text == customView.confirmPassordTextFiel.text {
            viewModel?.goToHome()
        } else {
            print("As senhas não são iguais")
            alert()
        }
        
    }
    
    private func alert() {
        // terminar configuração do ALert
        let alert = UIAlertController(title: "Atenção", message: "Login ou senha estão incorretos", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        present(alert, animated: true)
    }
    
    @objc
    func alertAction() {
        viewModel?.goToHome()
    }
    
}
