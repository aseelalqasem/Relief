//
//  ViewController3.swift
//  ReliefStarting
//
//  Created by rahaf alsaif on 04/08/1443 AH.
//

import UIKit


class ViewController3: UIViewController {
    
    var subt: Double = 0
    var disc: Double = 0
    var t: Double = 0
    
    var Checkouts: [Checkout] = [
        Checkout(photoOfCheckout: "CheckA" , nameOfCheck: "Hair treatment",priceOfCheck: 300 ,rateOfCheck: "4.5/5" ),
        Checkout(photoOfCheckout: "CheckB" , nameOfCheck: "Hair washing ",priceOfCheck: 388 ,rateOfCheck: "4.5/5" ),
        Checkout(photoOfCheckout: "CheckC" , nameOfCheck: "Nails",priceOfCheck: 499 ,rateOfCheck: "4.5/5" )
    ]
    

    @IBOutlet weak var CollectionView11: UICollectionView!
    
    @IBOutlet weak var subTitle: UILabel!
    @IBOutlet weak var discount: UILabel!
    @IBOutlet weak var total: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView11.delegate=self
        CollectionView11.dataSource=self
        
        for checkout in Checkouts {
            subt += checkout.priceOfCheck
            disc = t/100*15
            t = subt - disc
        }
        subTitle.text = String(subt)
        discount.text = String(disc)
        total.text = String(t)
    }
    

    @IBAction func CheckoutBtn(_ sender: Any) {
        let vc = ViewController5()
        vc.t = t
        
        performSegue(withIdentifier: "goToPayment", sender: self)
    }
    
}


//CollectionView Extension
extension ViewController3: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return Checkouts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ChecksCell", for: indexPath) as! Custom4collectionViewCell
        
        //..
        cell.CheckImage.image = UIImage(named: Checkouts[indexPath.row].photoOfCheckout)
        cell.CheckName.text = Checkouts[indexPath.row].nameOfCheck
        cell.CheckPrice.text = String(Checkouts[indexPath.row].priceOfCheck)
        cell.CheckRate.text = Checkouts[indexPath.row].rateOfCheck
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 400, height: 160)
   
    }
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
//        return 20
//    }

}
