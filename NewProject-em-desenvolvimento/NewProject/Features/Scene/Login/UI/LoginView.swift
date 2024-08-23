//
//  LoginView.swift
//  NewProject
//
//  Created by Kleiton Mendes on 11/07/24.
//

import UIKit

protocol LoginViewProtocol: AnyObject {
    func didTapLogin()
    func didTapRegistre()
}

final class LoginView: UIView {
    
    // MARK: delegate
    weak var delegate: LoginViewProtocol?
    
    // MARK: UI
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.font = .preferredFont(forTextStyle: .headline)
        label.textAlignment = .center
        label.textColor = .black
        label.text = "Login"
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        label.setContentCompressionResistancePriority(.required, for: .horizontal)
        return label
    }()
    
    private lazy var containerStackView: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    lazy var nameTextFiel: UITextField = {
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
        text.isSecureTextEntry = true
        text.layer.cornerRadius = 10
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    private lazy var loginButton: UIButton = {
        let btn = UIButton(type: .system)
        btn.setTitle("Login", for: .normal)
        btn.tintColor = .white
        btn.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        btn.backgroundColor = .blue
        btn.layer.cornerRadius = 10
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
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

extension LoginView {
    // MARK: Action
    @objc
    func registreAction() {
        delegate?.didTapRegistre()
    }
    
    @objc
    func loginAction() {
        delegate?.didTapLogin()
    }
}

extension LoginView {
    private func configConstraint() {
        addSubview(containerStackView)
        containerStackView.addArrangedSubview(titleLabel)
        containerStackView.addArrangedSubview(nameTextFiel)
        containerStackView.addArrangedSubview(passwordTextFiel)
        containerStackView.addArrangedSubview(loginButton)
        containerStackView.addArrangedSubview(registreButton)
        
        NSLayoutConstraint.activate([
            containerStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            containerStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            containerStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            containerStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16)
        ])
    }
}
