//
//  EditProfileViewController.swift
//  MINEEEEERS
//
//  Created by Dania Alogla on 06/08/1443 AH.
//

import UIKit

class EditProfileViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    @IBOutlet var txtSelectDate: UITextField!
    @IBOutlet var btnSelectGender: UIButton!
    @IBOutlet var txtSelectGender: UITextField!
    @IBOutlet var btnUpdate: UIButton!
    
    let genderPicker = UIPickerView()
    let datePicker = UIDatePicker()
    
    var genders = ["Female","Male"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        genderPicker.delegate = self
        genderPicker.dataSource = self
        
        txtSelectGender.inputView = genderPicker
        
        createDatePicker()
        
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return genders.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return genders[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        txtSelectGender.text = genders[row]
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func createDatePicker(){
        // toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        // barbutton
        let doneBtn = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        
        // assign toolbar
        txtSelectDate.inputAccessoryView = toolbar
        
        // assign date picker to the text filed
        txtSelectDate.inputView = datePicker
        
        // date picker mode
        datePicker.datePickerMode = .date
    
    }
    
    @objc func donePressed(){
        txtSelectDate.text = "\(datePicker.date)"
        self.view.endEditing(true)
    }
    
    @IBAction func btnUpdate(_ sender: Any) {
        _ = navigationController?.popViewController(animated: true)
    }
    
   
}
