//
//  select.swift
//  test
//
//  Created by Assel ALQasem on 08/08/1443 AH.
//

import UIKit

class select: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var selsctSalon: UIPickerView!
    @IBOutlet var label1: UIView!
    var arrayofsalons = ["Moon Light","Beauty Salon","BarberShop","Relax Spa","Glossy Salon","V Salon"]
    var arrayofservies = ["Nail Polish","Spa","hairCut","HairDye","Makeup"]
    var arrayofemployee = ["Ahmed","Abrar","Arwa","Bader","Cirra","Dalia","Eman","Farah","Fahad"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selsctSalon.delegate = self
        selsctSalon.dataSource = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func GetData1(_ sender: UIButton) {
//        label1.text = arrayofsalons[selsctSalon.selectedRow(inCom ponent: 0)]
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayofsalons.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayofsalons[row]
    }
//    func pickerView(_ pickerView: UIPickerView, widthForComponent component: Int) -> CGFloat {
//        label1.text = arrayofsalons[row]  }
    
    
    }


