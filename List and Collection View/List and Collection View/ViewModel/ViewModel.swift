//
//  ViewModel.swift
//  List and Collection View
//
//  Created by Consultant on 7/28/19.
//  Copyright © 2019 Consultant. All rights reserved.
//

import Foundation

protocol TableViewModelDelegate: class {
    func updateView()
}

let viewModel = ViewModel.shared
final class ViewModel {
    
    static let shared = ViewModel()
    private init() {}
    
    weak var tableDelegate: TableViewModelDelegate?
    
    var currentPlace: PlaceHolder?

    var placeHolders = [PlaceHolder]() {
        didSet {
            tableDelegate?.updateView()
        }
    }
    
    
    func getPlaceHolders(){
        PlaceHolderService.shared.getSearch(from: "") { (plHolders) in
            DispatchQueue.main.async {
                self.placeHolders = plHolders
            }
        }
    }
    
    
    
}
