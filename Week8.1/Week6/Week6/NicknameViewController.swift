//
//  NicknameViewController.swift
//  Week6
//
//  Created by 김소현 on 2022/11/09.
//

import UIKit

class NicknameViewController: UIViewController {
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // String 값 오타 주의 피드백 적용
    let ID = "ID"
    let password = "password"
    
    let timeViewController = TimeViewController()
    
    @IBAction func loginButtonTapped(_ sender: Any) {
        let userID = idTextField.text
        let userPassword = passwordTextField.text
        
        let savedUserID = UserDefaults.standard.string(forKey: ID)
        let savedUserPassword = UserDefaults.standard.string(forKey: password)
        
        if userID == savedUserID && userPassword == savedUserPassword {
            // 저장된 유저 정보 -> 네비게이션 전환 동작
            navigationController?.pushViewController(timeViewController, animated: true)
        } else {
            // TODO: Alert?
            print("User isn't found")
        }
    }
    
    @IBAction func registerButtonTapped(_ sender: Any) {
        let userID = idTextField.text
        let userPassword = passwordTextField.text
        UserDefaults.standard.set(userID, forKey: ID)
        UserDefaults.standard.set(userPassword, forKey: password)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
    }
    
}
