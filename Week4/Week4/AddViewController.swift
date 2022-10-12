//
//  AddViewController.swift
//  Week4
//
//  Created by 김소현 on 2022/10/11.
//

import UIKit

class AddViewController: UIViewController {
    
    @IBOutlet weak var titleTextField: UITextField!
    @IBOutlet weak var contentTextField: UITextField!
    
    var delegate: memoDataPassProtocol?

    @IBAction func saveButtonTapped(_ sender: Any) {
        delegate?.titleChangeFunc(text: titleTextField.text!)
        delegate?.contentChangeFunc(text: contentTextField.text!)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
