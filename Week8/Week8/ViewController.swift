//
//  ViewController.swift
//  Week8
//
//  Created by 김소현 on 2022/11/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greenView: UIView?
    @IBOutlet weak var viewTopConstraint: NSLayoutConstraint?
    @IBOutlet var tapGestureRecognizer: UITapGestureRecognizer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        tapGestureRecognizer?.addTarget(self, action: #selector(greenViewTapped))
    }
    
    @objc func greenViewTapped() {
        UIView.animate(withDuration: 3,
                       animations: {
            self.viewTopConstraint?.constant = 300
            self.view.layoutIfNeeded()
        }, completion: {_ in
            self.navigationController?.pushViewController(nextVC(), animated: true)
        })
    }
}



