//
//  ViewController.swift
//  Lecture 44
//
//  Created by Nika Kirkitadze on 30.06.21.
//

import UIKit

class ProductsViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var tableView: UITableView!
 //   @IBOutlet weak var spinner: UIActivityIndicatorView!
    
    // MARK: - Private properties
    
    private var dataSource: ArticlesDataSource!
    private var viewModel: ArticlesViewModelProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLayout()
        configureViewModel()
    }
    
    private func setupLayout() {
        tableView.registerNib(class: ProductCell.self)
    }

    private func configureViewModel() {
        viewModel = ArticlesViewModel()
        dataSource = ArticlesDataSource(with: tableView, viewModel: viewModel as! ArticlesViewModel)
        
        dataSource.refresh()
    }
    

}

