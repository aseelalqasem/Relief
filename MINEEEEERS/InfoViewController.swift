//
//  InfoViewController.swift
//  project
//
//  Created by afnan on 06/08/1443 AH.
//

import UIKit

class InfoViewController: UIViewController {
    @IBOutlet weak var PageControl2: UIPageControl!
    @IBOutlet weak var PageControl3: UIPageControl!
    @IBOutlet weak var HomeView: UIView!
    @IBOutlet weak var NavigationItem2: UINavigationItem!
    @IBAction func segDidChanged(_ sender: Any) {
        
    }
    @IBOutlet weak var SegmentedControl: UISegmentedControl!
    
    
    let arr1 = ["c1", "2", "3"]
    let arr2 = ["c2", "5", "c3","89", "5", "6"]
    let arr3 = ["c4", "5", "6","4", "5", "6"]
    var timer : Timer?
    var currentCellIndex = 0
    @IBOutlet weak var CollectionView3: UICollectionView!
    @IBOutlet weak var CollectionView2: UICollectionView!
    @IBOutlet weak var CollectionView1: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        PageControl2.numberOfPages = arr1.count
        startTimer2()
       
    }
    

    @IBAction func btnBook(_ sender: Any) {
        performSegue(withIdentifier: "GoToBook", sender: self
        )
    }
    

}

extension InfoViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        var arrCount = 0
        if collectionView === self.CollectionView1 {
            return arr1.count
        } else if collectionView === self.CollectionView2 {
            arrCount = arr2.count
        } else if collectionView === CollectionView3 {
            arrCount = arr3.count
        }
        return arrCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        if collectionView === self.CollectionView1 {
            let Cell1 = CollectionView1.dequeueReusableCell(withReuseIdentifier: "Cell1", for: indexPath) as! infoC1CollectionViewCell
            Cell1.image1.image = UIImage(named: arr1[indexPath.row])
            cell = Cell1
    }else if collectionView === self.CollectionView2 {
        let Cell2 = CollectionView2.dequeueReusableCell(withReuseIdentifier: "Cell2", for: indexPath) as! infoC2CollectionViewCell
        Cell2.image2.image = UIImage(named: arr2[indexPath.row])
        cell = Cell2
    } else if collectionView === CollectionView3 {
        let Cell3 = CollectionView3.dequeueReusableCell(withReuseIdentifier: "Cell3", for: indexPath) as! infoC3CollectionViewCell
     Cell3.image3.image = UIImage(named: arr3[indexPath.row])
        cell = Cell3
    }
    
    return cell
    


}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        var width = 0.0
        var height = 0.0
        
        if collectionView === self.CollectionView1 {
            width = 358
            height = 194
        } else if collectionView === self.CollectionView2 {
            width = 110
            height = 178
        } else if collectionView === CollectionView3 {
            width = 164
            height = 122
        }
        
        return CGSize(width: width, height: height)
    }
    func startTimer2(){
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
    }
    @objc func moveToNextIndex(){
        if currentCellIndex < arr1.count - 1 {
            currentCellIndex += 1

        }else{
            currentCellIndex = 0

        }
        
        CollectionView1.scrollToItem(at: IndexPath(item: currentCellIndex, section:0), at: .centeredHorizontally, animated: true)
        PageControl2.currentPage = currentCellIndex
        
    }
}
