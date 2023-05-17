//
//  HistoryModels.swift
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

enum History {
    // MARK: Use cases
    
    enum GetHistory {
        struct Request {
        }
        struct Response {
            var historyList: [BTCHistoryModel]
        }
        struct ViewModel {
            var historyList: [BTCHistoryModel]
        }
    }
}
