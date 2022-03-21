//
//  ViewController.swift
//  Relief2
//
//  Created by Dania Alogla on 29/07/1443 AH.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var btnImg2: UIButton!
    @IBOutlet var btnImg1: UIButton!
    @IBOutlet var btnImg3: UIButton!
    @IBOutlet var circle: UIView!
    @IBOutlet var circle4: UIView!
    @IBOutlet var circle3: UIView!
    @IBOutlet var circle2: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        circle.layer.cornerRadius = 20
        circle2.layer.cornerRadius = 20
        circle3.layer.cornerRadius = 20
        circle4.layer.cornerRadius = 20
        
        


        

    }
    
    
    @IBAction func btnPay(_ sender: UIButton) {
        performSegue(withIdentifier: "GoToPayments", sender: self)
    }
    
    @IBAction func btnApp(_ sender: UIButton) {
        performSegue(withIdentifier: "goToApp", sender: self)
    }
    
    
    @IBAction func editBtn(_ sender: Any) {
        performSegue(withIdentifier: "GoToEdit", sender: self)
    }
    
    @IBAction func btnGift(_ sender: UIButton) {
        performSegue(withIdentifier: "GoToGiftCard", sender: self)
    }
}

