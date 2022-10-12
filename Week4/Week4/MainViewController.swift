//
//  MainViewController.swift
//  Week4

import UIKit

protocol memoDataPassProtocol {
    func titleChangeFunc(text: String)
    func contentChangeFunc(text: String)
    // contentChangeFunc도 first에서 구현되어야 하나? 
}

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
        // 나중에 배열.count로 변경
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else { return UITableViewCell() }
        
        return cell
    }
    
    @IBAction func plusButtonTapped(_ sender: Any) {
        guard let addViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddViewController") as? AddViewController else {return}
        
        // addViewController.modalPresentationStyle = .fullScreen
        // 백버튼을 구현해야 함
        // or using navigation view controller
        
        present(addViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}
