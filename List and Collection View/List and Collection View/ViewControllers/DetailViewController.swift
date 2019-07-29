//
//  DetailViewController.swift
//  List and Collection View
//
//  Created by Consultant on 7/28/19.
//  Copyright © 2019 Consultant. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var titleD: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleD.text = viewModel.currentPlace!.title
        cacheManager.downloadImage(from: viewModel.currentPlace!.url) { [unowned self] dat in
            if let data = dat, let image = UIImage(data: data) {
                self.image.image = image
            }
        }
    }
    


}
