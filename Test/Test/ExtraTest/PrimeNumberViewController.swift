//
//  PrimeNumberViewController.swift
//  Test
//
//  Created by Ratchapol Pattarakanoksiri on 18/5/2566 BE.
//

//
//  FibonacciViewController.swift
//  Test
//
//  Created by Ratchapol Pattarakanoksiri on 18/5/2566 BE.
//

import UIKit

class PrimeNumberViewController: UIViewController {
    
    @IBOutlet weak var resultTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        getPrimeNumber(maxNumber: 100)
    }
    
    func getPrimeNumber(maxNumber: Int) {
        for number in 2...maxNumber {
            var isValid = true
            for i in 2..<number {
                if (number % i) == 0 {
                    isValid = false
                    break
                }
            }
            if isValid {
                resultTextView.text = "\(resultTextView.text ?? "") \(number), "
            }
        }
    }

}

