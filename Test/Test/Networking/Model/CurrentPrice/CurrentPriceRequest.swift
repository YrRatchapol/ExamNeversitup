//
//  CurrentPriceRequest.swift
//  Test
//
//  Created by Ratchapol Pattarakanoksiri on 17/5/2566 BE.
//

import Foundation
import Alamofire

class CurrentPriceRequest: BaseRequestProtocol {
    let url: String? = "https://api.coindesk.com/v1/bpi/currentprice.json"
    
    var parameters: Parameters? { get { return nil } }
}
