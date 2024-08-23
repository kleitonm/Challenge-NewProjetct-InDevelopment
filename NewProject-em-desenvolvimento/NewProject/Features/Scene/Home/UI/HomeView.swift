//
//  HomeView.swift
//  NewProject
//
//  Created by Kleiton Mendes on 13/07/24.
//

import UIKit

protocol HomeViewProtocol: AnyObject {
    func didTapModal()
}

final class HomeView: UIView {
    
    weak var delegate: HomeViewProtocol?
    
    //MARK: UI
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Lista"
        label.font = UIFont(name: "", size: 30)
        label.textColor = .black
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var contentTableView: UITableView = {
        let tableView = UITableView()
        tableView.showsVerticalScrollIndicator = false
//        tableView.backgroundColor = .lightGray
        tableView.separatorStyle = .singleLine
        tableView.separatorColor = .systemGray4
        tableView.separatorInset = .init(top: 0, left: 22, bottom: 0, right: 0)
        tableView.register(HomeTableViewCell.self, forCellReuseIdentifier: HomeTableViewCell.identifier)
        tableView.layer.cornerRadius = 20
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
//    private lazy var iconView: UIImageView = {
//        let view = UIImageView(image: .plusCircleFill)
//        view.contentMode = .scaleAspectFit
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
    
    private lazy var iconView: UIButton = {
        let btn = UIButton(type: .system)
//        btn.setTitle("Buscar", for: .normal)
//        btn.addTarget(self, action: #selector(handleSearch), for: .touchUpInside)
        btn.setImage(.plusCircleFill, for: .normal)
        btn.contentMode = .scaleAspectFit
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()
    
    
    //MARK: Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        configConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension HomeView {
    @objc
    func modalAction() {
        delegate?.didTapModal()
    }
}

extension HomeView {
    private func configConstraint() {
        addSubview(titleLabel)
        addSubview(contentTableView)
        addSubview(iconView)
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.bottomAnchor.constraint(equalTo: contentTableView.topAnchor, constant: -30),
            
            contentTableView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            contentTableView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -16),
            contentTableView.bottomAnchor.constraint(equalTo: iconView.topAnchor, constant: -60),

            iconView.centerXAnchor.constraint(equalTo: centerXAnchor),
            iconView.centerYAnchor.constraint(equalTo: centerYAnchor),
            iconView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -5),
            iconView.heightAnchor.constraint(equalToConstant: 150),
            iconView.widthAnchor.constraint(equalToConstant: 150)
        ])
    }
}
