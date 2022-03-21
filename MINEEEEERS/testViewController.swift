//
//  testViewController.swift
//  project
//
//  Created by afnan on 06/08/1443 AH.
//

import UIKit

class testViewController: UIViewController {

    @IBOutlet weak var CollectionView: UICollectionView!
    @IBOutlet weak var cell: UICollectionViewCell!
    @IBOutlet weak var imagew: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        imagew.layer.cornerRadius =
        imagew.frame.height / 2
    

   
}
}
