//
//  likeViewController.swift
//  MINEEEEERS
//
//  Created by Dania Alogla on 13/08/1443 AH.
//

import UIKit

class likeViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var CollectionView1: UICollectionView!
    var arrProductPhotos = [UIImage(named: "11") ,
                            UIImage (named: "12"),
                            UIImage (named: "13"),
                            UIImage (named: "14"),
                            UIImage (named: "15")]
    override func viewDidLoad() {
        super.viewDidLoad()
        CollectionView1.delegate = self
        CollectionView1.dataSource = self

       
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrProductPhotos.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = CollectionView1.dequeueReusableCell(withReuseIdentifier: "likeCell", for: indexPath)as! likeCollectionViewCell
        cell.image.image = arrProductPhotos[indexPath.row]
    return cell
    }
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
        
}

  


