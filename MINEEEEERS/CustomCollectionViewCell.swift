//
//  CustomCollectionViewCell.swift
//  ReliefStarting
//
//  Created by rahaf alsaif on 23/07/1443 AH.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    
//    @IBOutlet weak var PayImage: UIImageView!
    
    @IBOutlet weak var PayImage: UIImageView!
    @IBOutlet weak var PaySalonName: UILabel!
    @IBOutlet weak var PayDate: UILabel!
    @IBOutlet weak var PayPrice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        PayImage.isAccessibilityElement = true
        PayImage.accessibilityHint = "the Image Of The Service"
        
        PaySalonName.isAccessibilityElement = true
        PaySalonName.accessibilityHint = "the Salon Name"
        
        PayDate.isAccessibilityElement = true
        PayDate.accessibilityHint = "the Date Of The Service"
        
        PayPrice.isAccessibilityElement = true
        PayPrice.accessibilityHint = "the Price Of The Service"
        
    }
    
    
    
    func setupCell(photo: UIImage , price :String, date: String, name: String ){
        PayImage.image = photo
        PaySalonName.text = name
        PayDate.text = date
        PayPrice.text = "\( price) SAR"
    }
}
