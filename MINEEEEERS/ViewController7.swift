//
//  ViewController.swift
//  test
//
//  Created by Assel ALQasem on 22/07/1443 AH.
//

import UIKit

class ViewController7: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate,UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    
    @IBOutlet weak var txtSelectSalon: UITextField!
    let PickerSalon = UIPickerView()
    var ArrayOfSalons = ["Moon Light","GooldenTouches","BarberShoop","RelaxsSpa","NajdSalon","LeemSalon"]
    var currentIndex = 0
    
    
    
    @IBOutlet weak var txtServ: UITextField!
    let PickerServ = UIPickerView()
    var ArrayOfServ = ["HairCut","HairDey","NailArt","MoroconPath","FaceShaving","Wax"]
    var currentSerIndex = 0
    
    
    @IBOutlet weak var txtDoneby: UITextField!
    let Pickerdoneby = UIPickerView()
    var ArrayOfemployee = ["ahmed","reem","khalid","nora","latifa","susan"]
    var currentEmpIndex = 0
    
    
    @IBOutlet weak var imgPhoto: UIImageView!
    
    //    @IBAction func takephoto(_ sender: Any) {
    //
    //    }
    
    @IBAction func to1(_ sender: Any) {
        showPhotoAlert()
    }
    func showPhotoAlert(){
        let alert = UIAlertController(title: "Take photo from", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Photo library", style: .default, handler: {action in
            self.to1(type: .photoLibrary)
        }))
        
        //        alert = UIAlertController(title: "Photo lbrary", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: {action in
            self.to1(type: .camera)
        }))
        
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        present(alert,animated: true,completion: nil)
        
    }
    
    func to1(type: UIImagePickerController.SourceType){
        let taker = UIImagePickerController()
        taker.sourceType = type
        taker.allowsEditing = true
        //  ترو اذا ابيه يعدل على حسب المقاسات اللي حطيت له الصوره ويسوي زوم ان وزوم اوت وفولس اذا بس ياخذ الصوره منه
        taker.delegate = self
        present (taker, animated: true, completion: nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        guard let image = info[.originalImage] as? UIImage else{ // editedImage اذا ترو واذا فولس احط originalimage
            print("image not found")
            return
        }
        imgPhoto.image = image
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {

        dismiss(animated: true, completion: nil)
    }
   
    @IBAction func postbutton(_ sender: Any) {
    }
    @IBOutlet weak var comment: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PickerSalon.delegate=self
        PickerSalon.dataSource=self
        
        PickerServ.delegate=self
        PickerServ.dataSource=self
        
        Pickerdoneby.delegate=self
        Pickerdoneby.dataSource=self
        
        
//        هذه اعدادات البار اللي فوق البيكر فيو
        let ToolBar = UIToolbar()
        ToolBar.sizeToFit()
        let btnDone = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(closePicker))
        ToolBar.setItems([btnDone], animated: true)
        
        
        txtSelectSalon.inputView=PickerSalon
        txtSelectSalon.inputAccessoryView = ToolBar
        
        
        txtServ.inputView=PickerServ
        txtServ.inputAccessoryView = ToolBar
        
        txtDoneby.inputView=Pickerdoneby
        txtDoneby.inputAccessoryView = ToolBar
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView == PickerSalon {
            return ArrayOfSalons.count
            
        }
        else if pickerView == PickerServ {
            return ArrayOfServ.count
        }
        else if pickerView == Pickerdoneby{
            return ArrayOfemployee.count
        }
        
      return 0
    }
  
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView == PickerSalon {
            return ArrayOfSalons[row]
        }
        else if pickerView == PickerServ {
            return ArrayOfServ[row]
        }
        else if pickerView == Pickerdoneby{
            return ArrayOfemployee[row]
        }
        
        return ""

    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if pickerView == PickerSalon {
            currentIndex = row
            txtSelectSalon.text = ArrayOfSalons[row]
        }
        else if pickerView == PickerServ {
            currentSerIndex = row
            txtServ.text = ArrayOfServ[row]
        }
        else if pickerView == Pickerdoneby{
            currentEmpIndex = row
            txtDoneby.text = ArrayOfemployee[row]
        }
     
    }
    
    @objc func closePicker (){
        txtSelectSalon.text = ArrayOfSalons [currentIndex]
        txtServ.text = ArrayOfServ [currentSerIndex]
        txtDoneby.text = ArrayOfemployee [currentEmpIndex]
        view.endEditing(true)
    }
}

