//
//  infoC3CollectionViewCell.swift
//  project
//
//  Created by afnan on 08/08/1443 AH.
//

import UIKit

class infoC3CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var image3: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        image3.layer.cornerRadius = 12
    }

}
