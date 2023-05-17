//
//  LogicTestViewController.swift
//  Test
//
//  Created by Ratchapol Pattarakanoksiri on 18/5/2566 BE.
//

import UIKit

class LogicTestViewController: UIViewController {

    @IBOutlet weak var pincodeTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    func displayResult(isValid: Bool) {
        resultLabel.text = isValid ? "Valid" : "Invalid"
        resultLabel.textColor = isValid ? UIColor.systemGreen : UIColor.systemRed
    }
    
    func checkPincode(code: String) {
        let characters = Array(code)
        
        // check 6 digit
        if characters.count < 6 {
            displayResult(isValid: false)
            return
        }
        
        // check exist more than 2 digit
        for i in 1..<(characters.count-1) {
            if (characters[i-1] == characters[i]) &&  (characters[i] == characters[i+1]) {
                displayResult(isValid: false)
                return
            }
        }
        
        // check order more than 2 digit
        for i in 1..<(characters.count-1) {
            let tmp1 = characters[i-1].wholeNumberValue ?? 0
            let tmp2 = characters[i].wholeNumberValue ?? 0
            let tmp3 = characters[i+1].wholeNumberValue ?? 0
            if (tmp1+1 == tmp2) &&  (tmp2 == tmp3-1) {
                displayResult(isValid: false)
                return
            }
        }
        
        // check exist both number more than 2 group
        var count = 0
        for i in 1..<(characters.count) {
            if (characters[i-1] == characters[i]) {
                count += 1
            }
            
            if count > 2 {
                displayResult(isValid: false)
                return
            }
        }
        
        displayResult(isValid: true)
    }
    
    @IBAction func onTextChange() {
        checkPincode(code: pincodeTextField.text ?? "")
    }

}
