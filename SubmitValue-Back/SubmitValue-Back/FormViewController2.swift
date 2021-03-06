//
//  FormViewController.swift
//  SubmitValue-Back
//
//  Created by Lee Choongwon on 2017. 9. 29..
//  Copyright © 2017년 Choongwon. All rights reserved.
//

import UIKit

class FormViewController2 : UIViewController {
    
    @IBOutlet var email: UITextField!
    
    @IBOutlet var isUpdate: UISwitch!
    
    @IBOutlet var interval: UIStepper!
    
    @IBOutlet var isUpdateText: UILabel!
    
    @IBOutlet var intervalText: UILabel!
    
    @IBAction func onSwitch(_ sender: UISwitch) {
        if (sender.isOn == true) {
            self.isUpdateText.text = "갱신함"
        } else {
            self.isUpdateText.text = "갱신하지 않음"
        }
    }
    @IBAction func onStepper(_ sender: UIStepper) {
        let value = Int(sender.value)
        self.intervalText.text = "\(value)분마다 갱신"
    }
    
    @IBAction func onSubmit(_ sender: Any) {
        
//        let preVC = self.presentingViewController
//        
//        guard let vc = preVC as? ViewController else {
//            return
//        }
//        
//        vc.paramEmail = self.email.text
//        vc.paramUpdate = self.isUpdate.isOn
//        vc.paramInterval = self.interval.value
        
        let ad = UIApplication.shared.delegate as? AppDelegate
        
        ad?.paramEmail = self.email.text
        ad?.paramUpdate = self.isUpdate.isOn
        ad?.paramInterval = self.interval.value
        
        
        self.presentingViewController?.dismiss(animated: true)
    }
    
}
