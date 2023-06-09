//
//  CalculateRouter.swift
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

@objc protocol CalculateRoutingLogic
{
  //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol CalculateDataPassing
{
  var dataStore: CalculateDataStore? { get }
}

class CalculateRouter: NSObject, CalculateRoutingLogic, CalculateDataPassing
{
  weak var viewController: CalculateViewController?
  var dataStore: CalculateDataStore?
  
  // MARK: Routing
  
  //func routeToSomewhere(segue: UIStoryboardSegue?)
  //{
  //  if let segue = segue {
  //    let destinationVC = segue.destination as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //  } else {
  //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
  //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
  //    var destinationDS = destinationVC.router!.dataStore!
  //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
  //    navigateToSomewhere(source: viewController!, destination: destinationVC)
  //  }
  //}

  // MARK: Navigation
  
  //func navigateToSomewhere(source: CalculateViewController, destination: SomewhereViewController)
  //{
  //  source.show(destination, sender: nil)
  //}
  
  // MARK: Passing data
  
  //func passDataToSomewhere(source: CalculateDataStore, destination: inout SomewhereDataStore)
  //{
  //  destination.name = source.name
  //}
}
