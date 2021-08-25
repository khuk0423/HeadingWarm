//
//  SignUpViewController.swift
//  HeadingWarm
//
//  Created by Minjae Lee on 2021/08/26.
//

import UIKit
import Firebase
import FirebaseAuth

class SignUpViewController: UIViewController {
    @IBOutlet weak var textFieldID: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func btnSignUp(_ sender: UIButton) {
        let email = textFieldID.text
        let password = textFieldPassword.text
        Auth.auth().createUser(withEmail: email!, password: password!) { (authResult, error) in
            if error != nil {
                print(error!.localizedDescription)
                return
            }
            print("가입 성공!")
            return
        }
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
    }
    
}
