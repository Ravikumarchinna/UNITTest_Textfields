//
//  TestingViewControllerNavigation.swift
//  UNITTest_UITextfieldsTests
//
//  Created by Ravikumar on 16/03/22.
//

import XCTest
@testable import UNITTest_UITextfields

class TestingViewControllerNavigation: XCTestCase {

    
    var sut:ViewController!
    var navigationController: UINavigationController!
    
    
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "ViewController") as? ViewController
        sut.loadViewIfNeeded()
        navigationController = UINavigationController(rootViewController: sut)
    
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
        navigationController = nil
    }
    
    func testLoginVCbutton_whenTapped_signupViewControllerPushed() {
        
        let myPredicate = NSPredicate { input, _ in
            return (input as? UINavigationController)?.topViewController is SignupViewController
        }
        expectation(for: myPredicate, evaluatedWith: navigationController)
        sut.btn_login.sendActions(for: .touchUpInside)
        waitForExpectations(timeout: 1.5)
    }
    
    func testLoginVCbutton_whenTapped_SignupViewControllerIsPushed_V2() {
        
        sut.btn_login.sendActions(for: .touchUpInside)
        RunLoop.current.run(until: Date())
    
        guard let _ = navigationController.topViewController as? SignupViewController else {
            XCTFail()
            return
        }
    }
    
    func testLoginbutton_whenTapped_SecondViewControllerIsPushed_v3()  {
        
        let spyNavigationController = SpyNavigationController(rootViewController: sut)
        sut.btn_login.sendActions(for: .touchUpInside)
        
        guard let _ = spyNavigationController.pushedViewController as? SignupViewController else {
            XCTFail()
            return
        }
    }


}


























































