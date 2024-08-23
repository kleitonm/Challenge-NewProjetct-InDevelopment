//
//  ModalViewController.swift
//  NewProject
//
//  Created by Kleiton Mendes on 28/07/24.
//

import UIKit

final class ModalViewController: UIViewController {
    
     private var viewModel: ModalViewModelProtocol?
    
    //MARK: Init
    init(viewModel: ModalViewModelProtocol? = nil) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: Life Cycle
    override func loadView() {
        super.loadView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ModalViewModelProtocol {
    
}
