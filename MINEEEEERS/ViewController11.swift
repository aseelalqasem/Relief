//
//  ViewController11.swift
//  ReliefStarting
//
//  Created by rahaf alsaif on 12/08/1443 AH.
//

import UIKit

class ViewController11: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var Appointments: [appointment] =
    [

        appointment(photo: "photoA" , name: "1h Skin Treatment",date: "day:14.06.22",time: "time:11:40" ),
        appointment(photo: "photoB" , name: "1h Masssage",date: "day:14.06.22",time: "time:11:40" ),
//        appointment(photo: "photoC" , name: "1h Make up",date: "day:14.06.22",time: "time:11:40" ),
        appointment(photo: "photoD" , name: "1h Nail Art",date: "day:14.06.22",time: "time:11:40" )
    ]
    
    
    //    @IBOutlet weak var collectionview1: UICollectionViewCell!
    
    @IBOutlet weak var collectionview97: UICollectionView!
//    @IBOutlet weak var collectionView5: UICollectionView!
    //    @IBOutlet weak var CollectionView4: UICollectionView!
    //    @IBOutlet weak var CollectionView3: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        collectionview97.delegate=self
        collectionview97.dataSource=self
        
        //self.tabBarController?.tabBar.isHidden = true
    }
    
    
    @IBAction func btnCheckOut(_ sender: Any) {
        performSegue(withIdentifier: "GoToCheckout", sender: self)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // return PayHistorys.count
        return Appointments.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AppointmentCelll", for: indexPath) as! Custom2collectionViewCell
        
        //..
        cell.appooImage.image = UIImage(named: Appointments[indexPath.row].photo)
        cell.appooServiceName.text = Appointments[indexPath.row].name
        cell.apppooDate.text = Appointments[indexPath.row].date
        cell.appooTime.text = Appointments[indexPath.row].time
        //..
        
//        let appointmentss = Appointments[indexPath.row]
//
//        let appointmentInfo = appointment(photo: appointmentss.photo, name: appointmentss.name, date: appointmentss.date, time: appointmentss.time)
        
        
//        cell.setupCell(photo: UIImage(named: appointmentInfo.photo)!, time : appointmentInfo.time, date : appointmentInfo.date, name : appointmentInfo.name)
        
        //Cell design
        // Apply rounded corners
        cell.backgroundView = UIView()
        cell.backgroundView!.layer.cornerRadius = 5.0
        cell.backgroundView!.layer.masksToBounds = true
        
        // Set masks to bounds to false to avoid the shadow
        // from being clipped to the corner radius
        cell.backgroundView!.layer.cornerRadius = 5.0
        cell.backgroundView!.layer.masksToBounds = false
        
        // How blurred the shadow is
        cell.backgroundView!.layer.shadowRadius = 1.0
        
        // The color of the drop shadow
        cell.backgroundView!.layer.shadowColor = UIColor.black.cgColor
        
        // How transparent the drop shadow is
        cell.backgroundView!.layer.shadowOpacity = 1
        
        // How far the shadow is offset from the UICollectionViewCell’s frame
        cell.backgroundView!.layer.shadowOffset = CGSize(width: 0, height: 5)
        
        
        return cell
    }
    
}

