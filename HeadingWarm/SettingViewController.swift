//
//  SettingViewController.swift
//  HeadingWarm
//
//  Created by Minjae Lee on 2021/08/22.
//

import UIKit

class SettingViewController: UIViewController {
    @IBOutlet weak var txtConditionMsg: UITextField!
    @IBOutlet weak var txtConditionMsg2: UITextField!
    
    var data1: String?
    var data2: String?
    
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
    @IBAction func btnSend(_ sender: UIButton) {
        let firstVC = ViewController()
        data1 = txtConditionMsg.text
        data2 = txtConditionMsg2.text
        firstVC.data1 = data1!
        firstVC.data2 = data2!
        self.present(ViewController(), animated: false, completion: nil)
    }
    
}
