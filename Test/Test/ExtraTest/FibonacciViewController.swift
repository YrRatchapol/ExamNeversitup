//
//  FibonacciViewController.swift
//  Test
//
//  Created by Ratchapol Pattarakanoksiri on 18/5/2566 BE.
//

import UIKit

class FibonacciViewController: UIViewController {
    
    @IBOutlet weak var resultTextView: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()

        getFibonacci(number: 5)
    }
    
    func getFibonacci(number: Int) {
        var tmp1: Int64 = 0
        var tmp2: Int64 = 1
        for i in 0..<number {
            if (i == 1 || i == 0) {
                resultTextView.text = "\(resultTextView.text ?? "") \(i), "
            } else {
                let result:Int64 = tmp1 + tmp2
                tmp1 = tmp2
                tmp2 = result
                resultTextView.text = "\(resultTextView.text ?? "") \(result), "
            }
            
            if i == (number - 1) {
                resultTextView.text = "\(resultTextView.text ?? "")..."
            }
        }
    }

}
