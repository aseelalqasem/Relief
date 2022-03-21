//
//  infoC1CollectionViewCell.swift
//  project
//
//  Created by afnan on 08/08/1443 AH.
//

import UIKit

class infoC1CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image1: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        image1.layer.cornerRadius = 12
    }

}
