//
//  MainViewController.swift
//  Week4
//
//  Created by 김소현 on 2022/10/11.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBAction func plusButtonTapped(_ sender: Any) {
        guard let addViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddViewController") as? AddViewController else {return}
        
        //        addViewController.modalPresentationStyle = .fullScreen
        // 백버튼을 구현해야 함
        // or using navigation view controller
        
        
        present(addViewController, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
