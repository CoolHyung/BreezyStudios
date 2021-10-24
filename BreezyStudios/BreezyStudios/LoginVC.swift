//
//  LoginVC.swift
//  BreezyStudios
//
//

import UIKit
import Firebase
import FirebaseAuth

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var segCtrller: UISegmentedControl!

    @IBOutlet weak var UserIDinput: UITextField!
    @IBOutlet weak var PasswordInput: UITextField!
    
    @IBOutlet weak var confirmInput: UITextField!
    @IBOutlet weak var confirm: UILabel!

    @IBOutlet weak var signinbutton: UIButton!
    @IBOutlet weak var signupbutton: UIButton!
    
    @IBAction func log_or_signup(_ sender: UISegmentedControl) {
        switch segCtrller.selectedSegmentIndex {
        case 0:
            confirmInput.isHidden = true
            confirm.isHidden = true
            signinbutton.isHidden = false
            signupbutton.isHidden = true
            
        case 1:
            confirmInput.isHidden = false
            confirm.isHidden = false
            signinbutton.isHidden = true
            signupbutton.isHidden = false
            
        default:
            confirmInput.isHidden = true
            confirm.isHidden = true
            signinbutton.isHidden = false
            signupbutton.isHidden = true
            print("doesn't work")
            
        }
    }

}
