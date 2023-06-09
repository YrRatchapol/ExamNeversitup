//
//  CalculateViewController.swift
//  Test
//
//  Created by Ratchapol Pattarakanoksiri on 17/5/2566 BE.
//  Copyright (c) 2566 BE ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol CalculateDisplayLogic: class {
    func displayGetCurrencyDetail(viewModel: Calculate.CurrencyDetail.ViewModel)
    func displayCalculate(viewModel: Calculate.Calculate.ViewModel)
}

class CalculateViewController: UIViewController, CalculateDisplayLogic {
    var interactor: CalculateBusinessLogic?
    var router: (NSObjectProtocol & CalculateRoutingLogic & CalculateDataPassing)?
    
    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: Setup
    
    private func setup() {
        let viewController = self
        let interactor = CalculateInteractor()
        let presenter = CalculatePresenter()
        let router = CalculateRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var codeLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    // MARK: View lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doGetCurrencyDetail()
    }
    
    // MARK: Do something
    
    func doGetCurrencyDetail() {
        let request = Calculate.CurrencyDetail.Request()
        interactor?.doGetCurrencyDetail(request: request)
    }
    
    func displayGetCurrencyDetail(viewModel: Calculate.CurrencyDetail.ViewModel) {
        titleLabel.text = viewModel.title
        codeLabel.text = viewModel.code
    }
    
    func doCalculate(number: Double) {
        let request = Calculate.Calculate.Request(number: number)
        interactor?.doCalculate(request: request)
    }
    
    func displayCalculate(viewModel: Calculate.Calculate.ViewModel) {
        resultLabel.text = viewModel.resultDisplay
    }
    
    @IBAction func onChangeTextField(sender: UITextField) {
        if let number = Double(sender.text ?? "0") {
            doCalculate(number: number)
        }
    }
    
    @IBAction func onTouchBackground() {
        dismiss(animated: true)
    }
}
