//
//  ComunityViewController.swift
//  HeadingWarm
//
//  Created by 무빙키 on 2021/08/26.
//

import UIKit

class ComunityViewController: UIViewController {
    @IBOutlet var imgViewIssue: UIImageView!
    @IBOutlet var imgViewCommunity: UIImageView!
    @IBOutlet var imgViewCommunityLeader: UIImageView!
    @IBOutlet var pageController: UIPageControl!
    
    var images = ["01.jpg", "02.jpg", "03.jpg", "04.jpg", "05.jpg"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pageController.numberOfPages = images.count
        pageController.currentPage = 0
        pageController.pageIndicatorTintColor = UIColor.gray
        imgViewIssue.image = UIImage(named: images[0])
        
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
    @IBAction func pageChange(_ sender: UIPageControl) {
        imgViewIssue.image = UIImage(named: images[pageController.currentPage])
    }
    
}
