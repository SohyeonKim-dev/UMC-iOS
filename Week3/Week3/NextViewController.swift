//
//  NextViewController.swift
//  Week3
//
//  Created by 김소현 on 2022/10/07.
//

import UIKit

class NextViewController: UIViewController {
    
    var resultString = ""
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = resultString
    }
}
