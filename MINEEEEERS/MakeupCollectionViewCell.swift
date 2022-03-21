//
//  MakeupCollectionViewCell.swift
//  project
//
//  Created by afnan on 29/07/1443 AH.
//

import UIKit

class MakeupCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imgProductPhoto: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgProductPhoto.layer.cornerRadius = 12
    }
    
}
