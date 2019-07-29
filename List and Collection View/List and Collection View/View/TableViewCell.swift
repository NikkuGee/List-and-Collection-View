//
//  TableViewCell.swift
//  List and Collection View
//
//  Created by Consultant on 7/28/19.
//  Copyright © 2019 Consultant. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var thumbnail: UIImageView!
    @IBOutlet weak var title: UILabel!
    
    
    static let identifier = "TableViewCell"
    
    
    
    func configure(with place: PlaceHolder){
        self.title.text = place.title
        cacheManager.downloadImage(from: place.thumbnailUrl) { [unowned self] dat in
            if let data = dat, let image = UIImage(data: data) {
                self.thumbnail.image = image
            }
        }
    }
    
}

