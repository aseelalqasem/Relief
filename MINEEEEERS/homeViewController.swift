//
//  homeViewController.swift
//  project
//
//  Created by afnan on 26/07/1443 AH.
//

import UIKit

class homeViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var button: UIButton!
    @IBAction func button(_ sender: Any) {
        showActionsheet()
    }
    
    @IBOutlet weak var collectionView: UICollectionView!
    var arrProductPhotos = [UIImage(named: "11") ,
                            UIImage (named: "12"),
                            UIImage (named: "13"),
                            UIImage (named: "14"),
                            UIImage (named: "15")]
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.delegate = self
        collectionView.dataSource = self
        
        
    
    }
    
    @IBAction func btnSearch(_ sender: UIButton) {
        
        performSegue(withIdentifier: "GoToSearch", sender: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrProductPhotos.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCell", for: indexPath)as! homeCollectionViewCell
        cell.imgProductPhoto.image = arrProductPhotos[indexPath.row]
    return cell

}
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func showActionsheet(){
        let alert = UIAlertController(title: "Sort by", message: "", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Nearest", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Highest Rate", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Most Popular", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Close", style: .cancel, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
}
