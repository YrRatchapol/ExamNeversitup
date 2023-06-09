//
//  BTCScenePresenter.swift
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

protocol BTCScenePresentationLogic {
    func presentGetBTC(response: BTCScene.GetBTC.Response)
}

class BTCScenePresenter: BTCScenePresentationLogic {
    weak var viewController: BTCSceneDisplayLogic?
    
    // MARK: Do something
    
    func presentGetBTC(response: BTCScene.GetBTC.Response) {
        let viewModel = BTCScene.GetBTC.ViewModel(usdTitle: response.btcRate?.bpi?.usd?.title ?? "",
                                                  usdDescription: response.btcRate?.bpi?.usd?.description ?? "",
                                                  usdRate: response.btcRate?.bpi?.usd?.rateDisplay ?? "",
                                                  gbpTitle: response.btcRate?.bpi?.gbp?.title ?? "",
                                                  gbpDescription: response.btcRate?.bpi?.gbp?.description ?? "",
                                                  gbpRate: response.btcRate?.bpi?.gbp?.rateDisplay ?? "",
                                                  eurTitle: response.btcRate?.bpi?.eur?.title ?? "",
                                                  eurDescription: response.btcRate?.bpi?.eur?.description ?? "",
                                                  eurRate: response.btcRate?.bpi?.eur?.rateDisplay ?? "")
        viewController?.displayGetBTC(viewModel: viewModel)
    }
}
