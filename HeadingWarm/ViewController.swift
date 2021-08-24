import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var conditionMsg: UILabel!
    @IBOutlet weak var conditionMsg2: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    var data1: String = " 상태 메시지 "
    var data2: String = "가치관"
    var images = ["1.png", "2.png"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        conditionMsg.text = data1
        conditionMsg2.text = data2
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.gray
        pageControl.currentPageIndicatorTintColor = UIColor.black
        imgView.image = UIImage(named: images[0])
    }
    
    @IBAction func btnConditionMsg1(_ sender: UIButton) {
        let alert = UIAlertController(title: "상태 메시지 수정", message: "수정할 메시지를 입력해주세요", preferredStyle: .alert)
        alert.addTextField()
        let ok = UIAlertAction(title: "수정", style: .default) { (ok) in
        let textField = alert.textFields![0]
            self.conditionMsg.text = textField.text!
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel) { (cancel) in
            // nothing
        }
        alert.addAction(cancel)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func btnConditionMsg2(_ sender: UIButton) {
        let alert = UIAlertController(title: "가치관 수정", message: "수정할 메시지를 입력해주세요", preferredStyle: .alert)
        alert.addTextField()
        let ok = UIAlertAction(title: "수정", style: .default) { (ok) in
        let textField = alert.textFields![0]
            self.conditionMsg2.text = textField.text!
        }
        let cancel = UIAlertAction(title: "취소", style: .cancel) { (cancel) in
            // nothing
        }
        alert.addAction(cancel)
        alert.addAction(ok)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func pageChange(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
    
    
}

