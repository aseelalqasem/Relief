//
//  ViewControllerSC.swift
//  test
//
//  Created by Assel ALQasem on 11/08/1443 AH.
//

import UIKit

class ViewControllerSC: UIViewController {
    @IBOutlet weak var FirstView: UIView!
    @IBOutlet weak var SecondView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchView (sender: UISegmentedControl){
        if sender.selectedSegmentIndex == 0 {
            FirstView.alpha = 1
            SecondView.alpha = 0
        }else{
            FirstView.alpha = 0
            SecondView.alpha = 1
        }
    }

}
