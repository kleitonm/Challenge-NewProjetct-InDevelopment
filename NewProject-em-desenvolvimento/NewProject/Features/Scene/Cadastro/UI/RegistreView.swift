//
//  RegistreView.swift
//  NewProject
//
//  Created by Kleiton Mendes on 13/07/24.
//

import UIKit

protocol RegistreViewProtocol: AnyObject {
    func didTapRegistre()
}

final class RegistreView: UIView {
    
    weak var delegate: RegistreViewProtocol?
    
    private lazy var containerStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var nameTextFiel: UITextField = {
        let text = UITextField()
        text.placeholder = "Digite o Nome"
        text.borderStyle = .roundedRect
        text.layer.cornerRadius = 10
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    lazy var passwordTextFiel: UITextField = {
        let text = UITextField()
        text.placeholder = "Digite a Senha"
        text.borderStyle = .roundedRect
        text.layer.cornerRadius = 10
        text.isSecureTextEntry = true
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    lazy var confirmPassordTextFiel: UITextField = {
        let text = UITextField()
        text.placeholder = "Confirme a Senha"
        text.borderStyle = .roundedRect
        text.isSecureTextEntry = true
        text.layer.cornerRadius = 10
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    private lazy var registreButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Cadastro", for: .normal)
        btn.tintColor = .white
        btn.addTarget(self, action: #selector(registreAction), for: .touchUpInside)
        btn.backgroundColor = .blue
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configConstraint()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension RegistreView {
    @objc
    func registreAction() {
        delegate?.didTapRegistre()
    }
}

extension RegistreView {
    private func configConstraint() {
        addSubview(containerStackView)
        containerStackView.addArrangedSubview(nameTextFiel)
        containerStackView.addArrangedSubview(passwordTextFiel)
        containerStackView.addArrangedSubview(confirmPassordTextFiel)
        containerStackView.addArrangedSubview(registreButton)
        
        NSLayoutConstraint.activate([
            containerStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            containerStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            containerStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
}
