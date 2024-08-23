//
//  HomeViewController.swift
//  NewProject
//
//  Created by Kleiton Mendes on 13/07/24.
//

import UIKit

final class HomeViewController: UIViewController {
    
    // TODO:
    // - criar modal
    // - User Defaults para salvar lista e mostra na tableView
    
    //MARK: Constante
    private let viewModel: HomeViewModelProtocol?
    private let itens = ["item1", "item2", "item3", "item4"]
    
    private lazy var customView: HomeView = {
        let view = HomeView()
      
        return view
    }()
    
    //MARK: Init
    init(viewModel: HomeViewModelProtocol? = nil) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Life Cycle
    override func loadView() {
        super.loadView()
        view = customView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        customView.delegate = self
        customView.contentTableView.delegate = self
        customView.contentTableView.dataSource = self
    }
    
}

extension HomeViewController: HomeViewProtocol {
    func didTapModal() {
        
    }
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: HomeTableViewCell.identifier, for: indexPath) as? HomeTableViewCell else {
            return UITableViewCell()
        }
//        cell.setupCell(item: itens[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
}
