//
//  SaveViewController.swift
//  Week3.2
//
//  Created by κΉμν on 2022/10/10.
//

import UIKit

class SaveViewController: UIViewController {
    
    var textViewData = "default text2"
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        textView.text = textViewData
    }
}
