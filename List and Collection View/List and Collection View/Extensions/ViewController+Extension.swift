//
//  ViewController+Extension.swift
//  List and Collection View
//
//  Created by Consultant on 7/28/19.
//  Copyright © 2019 Consultant. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func goToDetail(_ nav: UINavigationController?) {

        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailVC.hidesBottomBarWhenPushed = true
        nav?.view.backgroundColor = .white
        nav?.pushViewController(detailVC, animated: true)

    }
}

extension UICollectionViewController {
    
    func goToNextDetail(_ nav: UINavigationController?) {
        
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailVC.hidesBottomBarWhenPushed = true
        nav?.view.backgroundColor = .white
        nav?.pushViewController(detailVC, animated: true)
        
    }
    
}
