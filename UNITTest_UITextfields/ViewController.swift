//
//  ViewController.swift
//  UNITTest_UITextfields
//
//  Created by Ravikumar on 16/03/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn_login: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btn_loginClicked(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let signupvc = storyboard.instantiateViewController(withIdentifier: "SignupViewController") as! SignupViewController
        self.navigationController?.pushViewController(signupvc, animated: true)
    }
    
    
    
    
    
    
    
    
    
    
}













































