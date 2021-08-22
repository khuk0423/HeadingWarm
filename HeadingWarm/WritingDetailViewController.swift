//
//  WritingDetailViewController.swift
//  HeadingWarm
//
//  Created by Minjae Lee on 2021/08/22.
//

import UIKit

class WritingDetailViewController: UIViewController {
    @IBOutlet weak var boxView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        boxView.layer.cornerRadius = 10

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

}
