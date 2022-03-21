//
//  ViewController.swift
//  ReliefStarting
//
//  Created by rahaf alsaif on 20/07/1443 AH.
//

import UIKit

class ViewController2: UIViewController ,UICollectionViewDataSource, UICollectionViewDelegate {

    
    var payHistorys: [PayHistory] =
    [
        PayHistory(photo: "1R" , name: "Roza Salon",date: "12 Sep",price: "780" ),
        PayHistory(photo: "2R" , name: "Ray barbershop",date: "23 Mar",price: "270" ),
        PayHistory(photo: "3R" , name: "Beautycare",date: "14 Jun",price: "180" ),
        PayHistory(photo: "4R" , name: "Nasna nailspa",date: "20 Oct",price: "500" )
    ]

    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myCollectionView.delegate = self
        myCollectionView.dataSource = self
//
//        myCollectionView.register(CustomCollectionViewCell.self, forCellWithReuseIdentifier: "PaymentCell")
        
//        PayHistorys.append(PayHistory(photo: UIImage(named: "Rectangle 18831")!,price:""),date:"",name:"")
//        PayHistorys.append(PayHistory(photo: UIImage(named: "Rectangle 18888")!,price:""),date:"",name:"")
//        PayHistorys.append(PayHistory(photo: UIImage(named: "Rectangle 18890")!,price:""),date:"",name:"")
//        PayHistorys.append(PayHistory(photo: UIImage(named: "Rectangle 18892")!,price:""),date:"",name:"")
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
       // return PayHistorys.count
        return payHistorys.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PaymentCell", for: indexPath) as! CustomCollectionViewCell


        let payHistory = payHistorys[indexPath.row]
        
        let payHistoryInfo = PayHistory(photo: payHistory.photo, name: payHistory.name, date: payHistory.date, price: payHistory.price)

                
        cell.setupCell(photo: UIImage(named: payHistoryInfo.photo)!, price: payHistoryInfo.price, date: payHistoryInfo.date, name: payHistoryInfo.name)
        
//        cell.setupCell(photo: (UIImage(named: payHistoryInfo.photo) ?? UIImage(named: "r")) , price: payHistoryInfo.price, date: payHistoryInfo.date, name: payHistoryInfo.name)
        
       // let cell = UICollectionViewCell()
        
        return cell
    }
    
    

}

