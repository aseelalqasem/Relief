//
//  LocalViewController.swift
//  project
//
//  Created by afnan on 11/08/1443 AH.
//

import UIKit

class LocalViewController: UIViewController {
 
    @IBOutlet weak var SegmentedControl2: UISegmentedControl!
    
    @IBOutlet weak var LocalView: UIView!
   
    
    
    
   
    @IBOutlet weak var myCollectionView3: UICollectionView!
    @IBOutlet weak var myCollectionView2: UICollectionView!
    
    @IBOutlet weak var myCollectionView1: UICollectionView!
    
    
    let arr1 = ["1", "2", "3"]
    let arr2 = ["4", "5", "6","4", "5", "6"]
    let arr3 = ["4", "5", "6","4", "5", "6"]
    
//    var timer : Timer?
//    var currentCellIndex = 0
//
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
     // PageControl7.numberOfPages = arr1.count
       // startTimer5()
    }
    

    
    
}

extension LocalViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var arrCount = 0
        if collectionView == self.myCollectionView1 {
            return arr1.count
        } else if collectionView == self.myCollectionView2 {
            arrCount = arr2.count
        } else if collectionView == myCollectionView3{
            arrCount = arr3.count
        }
        return arrCount
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        if collectionView == self.myCollectionView1{
            let lcell1 = myCollectionView1.dequeueReusableCell(withReuseIdentifier: "lcell1", for: indexPath) as! LocalC1CollectionViewCell
            lcell1.image1.image = UIImage(named: arr1[indexPath.row])
            cell = lcell1
    }else if collectionView == self.myCollectionView2 {
        let lcell2 = myCollectionView2.dequeueReusableCell(withReuseIdentifier: "lcell2", for: indexPath) as! LocalC2CollectionViewCell
        lcell2.image2.image = UIImage(named: arr2[indexPath.row])
        cell = lcell2
    } else if collectionView == myCollectionView3 {
        let lcell3 = myCollectionView3.dequeueReusableCell(withReuseIdentifier: "lcell3", for: indexPath) as! LocalC3CollectionViewCell
     lcell3.image3.image = UIImage(named: arr3[indexPath.row])
        cell = lcell3
    }
    
    return cell
    


}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var width = 0.0
        var height = 0.0
        
        if collectionView == self.myCollectionView1 {
            width = 358
            height = 194
        } else if collectionView == self.myCollectionView2 {
            width = 110
            height = 178
        } else if collectionView == myCollectionView3 {
            width = 164
            height = 122
        }
        
        return CGSize(width: width, height: height)
    }
//    func startTimer5(){
//        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveToNextIndex5), userInfo: nil, repeats: true)
//    }
//    @objc func moveToNextIndex5(){
//        if currentCellIndex < arr1.count - 1 {
//            currentCellIndex += 1
//
//        }else{
//            currentCellIndex = 0
//
//        }
//       // currentCellIndex += 1
//        myCollectionView1.scrollToItem(at: IndexPath(item: currentCellIndex, section:0), at: .centeredHorizontally, animated: true)
//    //  PageControl7.currentPage = currentCellIndex
//}
}
