//
//  Cell3CollectionViewCell.swift
//  project
//
//  Created by afnan on 06/08/1443 AH.
//

import UIKit

class Cell3CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var myImage3: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myImage3.layer.cornerRadius = 12
    }

}
