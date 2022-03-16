//
//  SpyNavigationController.swift
//  UNITTest_UITextfieldsTests
//
//  Created by Ravikumar on 16/03/22.
//

import UIKit

class SpyNavigationController:UINavigationController {
    
    var pushedViewController:UIViewController!
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        
        super.pushViewController(viewController, animated: animated)
        pushedViewController = viewController
    }
}
































































