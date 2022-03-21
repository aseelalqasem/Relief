//
//  infoC2CollectionViewCell.swift
//  project
//
//  Created by afnan on 08/08/1443 AH.
//

import UIKit

class infoC2CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image2: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        image2.layer.cornerRadius = 12
    }

}
