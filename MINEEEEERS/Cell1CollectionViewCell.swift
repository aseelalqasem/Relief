//
//  Cell1CollectionViewCell.swift
//  project
//
//  Created by afnan on 06/08/1443 AH.
//

import UIKit

class Cell1CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var myImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myImage.layer.cornerRadius = 12
    }

}
