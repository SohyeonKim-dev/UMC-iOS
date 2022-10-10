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
        
        saveViewController.textViewData = inputTextField.text ?? "default text"
        
        present(saveViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
//        guard let saveViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SaveViewController") as? SaveViewController else {return}
        
        // saveViewController.textViewData = inputTextField.text ?? "default text"
        // 뷰가 사라지기 직전에 데이터 값을 넘기려 했는데, button tapped로 다음 뷰로 넘어가는 동작이 먼저 이루어져서, 데이터를 다음 뷰컨트롤러로 넘길 수 없었다.
        // 해결 방법: doneButtonTapped 함수 내부에, textViewData 전달하는 코드 추가
        // tableView를 활용하여 더욱 메모장다운 UI로 개선하면 좋을 것 같다.
    }
}
