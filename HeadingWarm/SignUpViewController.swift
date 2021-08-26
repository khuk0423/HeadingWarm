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
    @IBOutlet var backgroundImg: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 로그인 정보 기록
//        if let user = Auth.auth().currentUser {
//            textFieldID.placeholder = "이미 로그인 된 상태입니다."
//            textFieldPassword.placeholder = "이미 로그인 된 상태입니다."
//        }
        self.view.sendSubviewToBack(self.backgroundImg)
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
                let alert = UIAlertController(title: "회원가입 실패", message: "비밀번호는 최소 6자리 이상, 영문과 숫자 조합으로 입력해주세요.", preferredStyle: .alert)
                let okAction = UIAlertAction(title: "확인", style: .default) { (action) in
                }
                alert.addAction(okAction)
                self.present(alert, animated: false, completion: nil)
                return
            }
            let alert = UIAlertController(title: "환영합니다", message: "회원가입이 성공적으로 완료되었습니다!", preferredStyle: .alert)
            let okAction = UIAlertAction(title: "확인", style: .default) { (action) in
            }
            alert.addAction(okAction)
            self.present(alert, animated: false, completion: nil)
            return
        }
    }
    
    @IBAction func btnLogin(_ sender: UIButton) {
        let email = textFieldID.text
        let password = textFieldPassword.text
        Auth.auth().signIn(withEmail: email!, password: password!) { (user, error) in
                if user != nil {
                    self.changeView("Main", "ViewController")
                    print("login success")
                }
                else {
                    let alert = UIAlertController(title: "회원정보가 올바르지 않습니다.", message: "이메일 또는 비밀번호를 다시 확인해주세요.", preferredStyle: .alert)
                    let okAction = UIAlertAction(title: "확인", style: .default) { (action) in
                    }
                    alert.addAction(okAction)
                    self.present(alert, animated: false, completion: nil)
                }
          }
    }
    
    @IBAction func didTapSaveId(_ sender: UIButton) {
        sender.isSelected.toggle()
    }
    
    @IBAction func didTapAutoLogin(_ sender: UIButton) {
        sender.isSelected.toggle()
        if let user = Auth.auth().currentUser {
            textFieldID.placeholder = "이미 로그인 된 상태입니다."
            textFieldPassword.placeholder = "이미 로그인 된 상태입니다."
        }
    }
    
    public func changeView(_ storyBoardName : String,_ viewControllerName : String)
    {
        let stb = UIStoryboard(name: storyBoardName, bundle: nil)
        let rootVC = stb.instantiateViewController(withIdentifier: viewControllerName)
        let snapshot = (UIApplication.shared.keyWindow?.snapshotView(afterScreenUpdates: true))!
        rootVC.view.addSubview(snapshot)

        UIApplication.shared.keyWindow?.rootViewController = rootVC
        UIView.transition(with: snapshot,
                          duration: 0.4,
                          options: .transitionCrossDissolve,
                          animations: {
                              snapshot.layer.opacity = 0
                          },
                          completion: { status in
                              snapshot.removeFromSuperview()
                          })
    }
}
