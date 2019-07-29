//
//  CollectionViewController.swift
//  List and Collection View
//
//  Created by Consultant on 7/28/19.
//  Copyright © 2019 Consultant. All rights reserved.
//

import UIKit


class CollectionViewController: UICollectionViewController {

    @IBOutlet weak var collectionGrid: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionGrid.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.identifier)


    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return viewModel.placeHolders.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionCell = collectionGrid.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.identifier, for: indexPath)
        
        print(collectionCell.self)
        return collectionCell
    }

}


