//
//  ViewController.swift
//  List and Collection View
//
//  Created by Consultant on 7/27/19.
//  Copyright © 2019 Consultant. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpView()
    }
    
    
    func setUpView() {
        viewModel.getPlaceHolders()
//        tableView.register(UINib(nibName: TableViewCell.identifier, bundle: Bundle.main), forCellReuseIdentifier: TableViewCell.identifier)
        tableView.tableFooterView = UIView(frame: .zero)
        
        viewModel.tableDelegate = self
    }

}




extension TableViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 175
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        viewModel.currentPlace = viewModel.placeHolders[indexPath.row]
        
        goToDetail(navigationController.self)
    }
    
    
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.placeHolders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: TableViewCell.identifier, for: indexPath) as! TableViewCell
        let place = viewModel.placeHolders[indexPath.row]
        cell.configure(with: place)
        return cell
        
    }
    
    
    
    
}





//MARK: ViewModelDelegate
extension TableViewController: TableViewModelDelegate {
    
    func updateView() {
        DispatchQueue.main.async {
            print(viewModel.placeHolders.count)
            self.tableView.reloadData()
        }
    }
}

