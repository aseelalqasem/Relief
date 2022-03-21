//
//  ViewController.swift
//  project
//
//  Created by afnan on 26/07/1443 AH.
//

import UIKit

class ViewController12: UIViewController {
    
    
    
    @IBOutlet weak var PageControl: UIPageControl!
    let arr1 = ["1", "2", "3"]
    var arr2 = ["4", "5", "6","q", "q2", "q3"]
    let arr3 = ["7", "8"]
    var timer : Timer?
   // var timer2 : Timer?
    var currentCellIndex = 0
//    var currentCellIndex2 = 0 {
//        didSet{
//            UIView.animate(withDuration: 0.3) {
//                self.arr2.append(self.arr2.removeFirst())
//                self.collection2.reloadData()
//            }
//
//        }
//    }
    
    @IBOutlet weak var UINavigationItem: UINavigationItem!
    
    @IBOutlet weak var collection1: UICollectionView!
    @IBOutlet weak var collection2: UICollectionView!
    
    @IBOutlet weak var collection3: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PageControl.numberOfPages = arr1.count
     //   PageControl2.numberOfPages = arr2.count
        startTimer()
     //   startTimer2()
       
        
    }
    
    
}




extension ViewController12: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var arrCount = 0
        if collectionView === self.collection1 {
            return arr1.count
        } else if collectionView === self.collection2 {
           return arr2.count
        } else if collectionView === collection3 {
            arrCount = arr3.count
        }
        return arrCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = UICollectionViewCell()
        
        if collectionView === self.collection1 {
            let cell1 = collection1.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! Cell1CollectionViewCell
            cell1.myImage.image = UIImage(named: arr1[indexPath.row])
            cell = cell1
            
        } else if collectionView === self.collection2 {
            let cell2 = collection2.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! Cell2CollectionViewCell
            cell2.myImage2.image = UIImage(named: arr2[indexPath.row])
            cell = cell2
            
        } else if collectionView === collection3 {
            let cell3 = collection3.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! Cell3CollectionViewCell
         cell3.myImage3.image = UIImage(named: arr3[indexPath.row])
            cell = cell3
        }
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var width = 0.0
        var height = 0.0
        
        if collectionView === self.collection1 {
            width = 358
            height = 194
        } else if collectionView === self.collection2 {
            width = 110
            height = 178
        } else if collectionView === collection3 {
            width = 164
            height = 122
        }
        
        return CGSize(width: width, height: height)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if collectionView == self.collection1{
            if indexPath.row == 0 {
                performSegue(withIdentifier: "goToInfo", sender: self)
            }

        } else if collectionView === self.collection2 {
            

        } else if collectionView === collection3 {

        }
        
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
    }
//   func startTimer2(){
//        timer2 = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(moveToNextIndex2), userInfo: nil, repeats: true)
//   }
    
    @objc func moveToNextIndex(){
        if currentCellIndex < arr1.count  - 1{
            currentCellIndex += 1

        }else{
            currentCellIndex = 0

        }
      //  currentCellIndex += 1
        collection1.scrollToItem(at: IndexPath(item: currentCellIndex, section:0), at: .centeredHorizontally, animated: true)
        PageControl.currentPage = currentCellIndex
       
    }
//  @objc func moveToNextIndex2(){
//
//        if currentCellIndex2 < arr2.count - 1 {
//            print(currentCellIndex2)
//            currentCellIndex2 += 1
//
//        }
////      else if currentCellIndex2 <= arr2.count {
////          print(currentCellIndex2)
////          currentCellIndex2 += 1
////
////      }
//      else{
//            print(currentCellIndex2)
//            currentCellIndex2 = 0
//
//        }
////        currentCellIndex += 1
//      collection2.scrollToItem(at: IndexPath(item: currentCellIndex2, section:0), at: .centeredHorizontally, animated: true)
//        PageControl2.currentPage = currentCellIndex2
//
//    }
        }
