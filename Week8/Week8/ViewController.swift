//
//  ViewController.swift
//  Week8
//
//  Created by κΉμν on 2022/11/14.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greenView: UIView!
    @IBOutlet weak var viewTopConstraint: NSLayoutConstraint!
    @IBOutlet var tapGestureRecognizer: UITapGestureRecognizer!
    
    let nextVC = NextVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tapGestureRecognizer.addTarget(self, action: #selector(greenViewTapped))
    }
    
    @objc func greenViewTapped() {
        UIView.animate(withDuration: 3,
                       animations: {
            self.viewTopConstraint.constant = 300
            self.view.layoutIfNeeded()
        }, completion: { _ in
            self.navigationController?.pushViewController(self.nextVC, animated: true)
        })
    }
}



