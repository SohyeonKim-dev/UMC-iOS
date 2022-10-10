//
//  MainViewController.swift
//  Week3
//
//  Created by 김소현 on 2022/10/07.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet weak var firstNumTextField: UITextField!
    @IBOutlet weak var secondNumTextField: UITextField!
    
    @IBAction func plusButtonTapped(_ sender: UIButton) {
        guard let nextViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NextViewController") as? NextViewController else { return }
        
        guard let firstNum = Int(firstNumTextField.text ?? "") else {return}
        guard let secondNum = Int(secondNumTextField.text ?? "") else {return}
        
        let resultNum = firstNum + secondNum
        
        nextViewController.resultString = String(resultNum)
        
        present(nextViewController, animated: true)
    }
    
    @IBAction func minusButtonTapped(_ sender: Any) {
        guard let nextViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NextViewController") as? NextViewController else { return }
        
        guard let firstNum = Int(firstNumTextField.text ?? "") else {return}
        guard let secondNum = Int(secondNumTextField.text ?? "") else {return}
        
        let resultNum = firstNum - secondNum
        
        nextViewController.resultString = String(resultNum)
        
        present(nextViewController, animated: true)
    }
    
    @IBAction func divisionButtonTapped(_ sender: Any) {
        guard let nextViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NextViewController") as? NextViewController else { return }
        
        guard let firstNum = Int(firstNumTextField.text ?? "") else {return}
        guard let secondNum = Int(secondNumTextField.text ?? "") else {return}
        
        let resultNum = firstNum / secondNum
        
        nextViewController.resultString = String(resultNum)
        
        present(nextViewController, animated: true)
    }
    
    @IBAction func multiButtonTapped(_ sender: Any) {
        guard let nextViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "NextViewController") as? NextViewController else { return }
        
        guard let firstNum = Int(firstNumTextField.text ?? "") else {return}
        guard let secondNum = Int(secondNumTextField.text ?? "") else {return}
        
        let resultNum = firstNum * secondNum
        
        nextViewController.resultString = String(resultNum)
        
        present(nextViewController, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
