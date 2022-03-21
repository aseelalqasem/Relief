//
//  Cell2CollectionViewCell.swift
//  project
//
//  Created by afnan on 06/08/1443 AH.
//

import UIKit

class Cell2CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var myImage2: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        myImage2.layer.cornerRadius = 12
    }

}
