//
//  DetailViewController.swift
//  HeadingWarm
//
//  Created by 무빙키 on 2021/08/26.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var segControl: UISegmentedControl!
    @IBOutlet var imgView: UIImageView!
    
    var images = ["001.jpg", "002.jpg", "003.jpg", "004.jpg", "005.jpg", "006.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imgView.image = UIImage(named: images[0])
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
    @IBAction func chooseMenu(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            imgView.image = UIImage(named: images[0])
        case 1:
            imgView.image = UIImage(named: images[1])
        case 2:
            imgView.image = UIImage(named: images[2])
        case 3:
            imgView.image = UIImage(named: images[3])
        case 4:
            imgView.image = UIImage(named: images[4])
        case 5:
            imgView.image = UIImage(named: images[5])
        default:
            print("error")
        }
    }
    
}
