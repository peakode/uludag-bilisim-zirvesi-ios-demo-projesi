//
//  GameViewController.swift
//  DemoProject
//
//  Created by Cahit Tolga Ozdemir on 19.02.2017.
//  Copyright © 2017 Cahit Tolga Ozdemir. All rights reserved.
//

import UIKit

class GameViewController: UIViewController, UITextFieldDelegate{
    
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var mySlider: UISlider!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.title = "Oyun Ekranı"
    }
    
    
    @IBAction func valueChanged(_ sender: UISlider) {
        
        let roundedValue = round(sender.value / 1) * 1
        print("ROUNDED VALUE IS : \(roundedValue)")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        print("TEXT KUTUSU DEĞERİ : \(textField.text!)")
        
        let roundValue = round(mySlider.value / 1) * 1
        print("SLIDER VALUE: \(roundValue)")
        
        
        if Int(textField.text!) == Int(roundValue) {
            let alertController = UIAlertController(title: "SONUÇ", message: "Tebrikler doğru tahmin ettiniz 👏", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Tekrar dene", style: .default, handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
            
            
        }else {
            
            let alertController = UIAlertController(title: "SONUÇ", message: "Doğru tahmin edemediniz! 😢", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Tekrar dene", style: .default, handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }
    
    }
    
    @IBAction func karşılaştırClicked(_ sender: UIButton) {
        
        let roundValue = round(mySlider.value / 1) * 1
        
        myTextField.resignFirstResponder()
        
        if Int(myTextField.text!) == Int(roundValue) {
            let alertController = UIAlertController(title: "SONUÇ", message: "Tebrikler doğru tahmin ettiniz 👏", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Tekrar dene", style: .default, handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
            
            
        }else {
            
            let alertController = UIAlertController(title: "SONUÇ", message: "Doğru tahmin edemediniz! 😢", preferredStyle: .alert)
            alertController.addAction(UIAlertAction(title: "Tekrar dene", style: .default, handler: nil))
            
            self.present(alertController, animated: true, completion: nil)
        }

        
    }
    
    

}
