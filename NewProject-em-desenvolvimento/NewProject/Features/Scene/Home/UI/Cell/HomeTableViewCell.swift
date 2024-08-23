//
//  LoginTableViewCell.swift
//  NewProject
//
//  Created by Kleiton Mendes on 13/07/24.
//

import UIKit

final class HomeTableViewCell: UITableViewCell {
    
    //MARK: UI
    static var identifier: String {
        return .init(describing: self)
    }
    
    private lazy var containerStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [iconView, nameLabel])
        stack.axis = .horizontal
        stack.distribution = .fill
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    private lazy var iconView: UIImageView = {
        let view = UIImageView(image: .cartCircleFill)
        view.contentMode = .scaleAspectFit
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.backgroundColor = .red
        label.text = "Icone"
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configConstraint()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(item: String) {
        nameLabel.text = item
    }
    
}

extension HomeTableViewCell {
    private func configConstraint() {
        contentView.addSubview(containerStackView)
//        contentView.addSubview(nameLabel)

        NSLayoutConstraint.activate([
//            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor),
//            nameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
//            nameLabel.heightAnchor.constraint(equalToConstant: 20)
            
            containerStackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            containerStackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            containerStackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            
            iconView.heightAnchor.constraint(equalToConstant: 30),
            iconView.widthAnchor.constraint(equalToConstant: 30)
        ])
    }
}
