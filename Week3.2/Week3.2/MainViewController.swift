//
//  MainViewController.swift
//  Week3.2
//
//  Created by 김소현 on 2022/10/10.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        guard let saveViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SaveViewController") as? SaveViewController else {return}
        
        present(saveViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        guard let saveViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SaveViewController") as? SaveViewController else {return}
        
        saveViewController.textViewData = inputTextField.text as? String ?? "default text"
    }
}
