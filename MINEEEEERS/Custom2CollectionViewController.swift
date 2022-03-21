//
import UIKit
class Custom2collectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var appooImage: UIImageView!
    @IBOutlet weak var appooServiceName: UILabel!
    @IBOutlet weak var apppooDate: UILabel!
    @IBOutlet weak var appooTime: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        appooImage.isAccessibilityElement = true
        appooImage.accessibilityHint = "the Image Of The Service"
        
        appooServiceName.isAccessibilityElement = true
        appooServiceName.accessibilityHint = "the Service Name"
        
        apppooDate.isAccessibilityElement = true
        apppooDate.accessibilityHint = "the Price Of The Service"
        
        appooTime.isAccessibilityElement = true
        appooTime.accessibilityHint = "the Rate Of The Service"
        
    }
    
}
