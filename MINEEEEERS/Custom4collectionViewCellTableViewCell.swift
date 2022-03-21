//
//  Custom4collectionViewCellTableViewCell.swift
//  ReliefStarting
//
//  Created by rahaf alsaif on 04/08/1443 AH.
//

import UIKit

class Custom4collectionViewCell: UICollectionViewCell {

    @IBOutlet weak var CheckImage: UIImageView!
    @IBOutlet weak var CheckName: UILabel!
    @IBOutlet weak var CheckPrice: UILabel!
    @IBOutlet weak var CheckRate: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        CheckImage.isAccessibilityElement = true
        CheckImage.accessibilityHint = "the Image Of The Service"
        
        CheckName.isAccessibilityElement = true
        CheckName.accessibilityHint = "the Service Name"
        
        CheckPrice.isAccessibilityElement = true
        CheckPrice.accessibilityHint = "the Price Of The Service"
        
        CheckRate.isAccessibilityElement = true
        CheckRate.accessibilityHint = "the Rate Of The Service"
        
    }
    
}
