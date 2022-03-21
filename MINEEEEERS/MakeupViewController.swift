//
//  MakeupViewController.swift
//  project
//
//  Created by afnan on 29/07/1443 AH.
//

import UIKit

class MakeupViewController:UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
   
    
    //1
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var NavigationItem: UINavigationItem!
    @IBOutlet weak var CollectionView: UICollectionView!
    @IBOutlet weak var PageControl: UIPageControl!
    //1
    var arrProductPhotos = [UIImage(named: "img_Product1") ,
                            UIImage (named: "img_Product2"),
                            UIImage (named: "img_Product3")]
    //2
    var arrProductPhotos2 = [UIImage(named: "img_Product1") ,
                            UIImage (named: "img_Product2"),
                            UIImage (named: "img_Product3")]
    var timer : Timer?
    var currentCellIndex = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        //1
        CollectionView.delegate = self
        CollectionView.dataSource = self
        //2 most
        collectionView2.delegate = self
        collectionView2.dataSource = self
        //1
        PageControl.numberOfPages = arrProductPhotos.count
        startTimer()
    }
    func startTimer(){
        timer = Timer.scheduledTimer(timeInterval: 2.5, target: self, selector: #selector(moveToNextIndex), userInfo: nil, repeats: true)
    }
    @objc func moveToNextIndex(){
        if currentCellIndex < arrProductPhotos.count - 1 {
            currentCellIndex += 1

        }else{
            currentCellIndex = 0

        }
        currentCellIndex += 1
        CollectionView.scrollToItem(at: IndexPath(item: currentCellIndex, section:0), at: .centeredHorizontally, animated: true)
        PageControl.currentPage = currentCellIndex
    }
   //1
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrProductPhotos.count

    }
    //2
    func collectionView2(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrProductPhotos2.count

    }
    //1
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "makeupCell", for: indexPath) as! MakeupCollectionViewCell
        cell.imgProductPhoto.image  = arrProductPhotos[indexPath.row]
        return cell
    }
    //2
    func collectionView2(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView2.dequeueReusableCell(withReuseIdentifier: "mostCell", for: indexPath) as! MakeupCollectionViewCell
        cell.imgProductPhoto.image  = arrProductPhotos2[indexPath.row]
        return cell
    }
    
   
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: CollectionView.frame.width, height: CollectionView.frame.height)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
