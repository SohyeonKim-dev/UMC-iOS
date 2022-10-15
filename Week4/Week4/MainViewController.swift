//
//  MainViewController.swift
//  Week4

import UIKit

protocol memoDataPassProtocol {
    func titleChangeFunc(text: String)
    func contentChangeFunc(text: String)
    // contentChangeFunc도 first에서 구현되어야 하나? 
}

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, memoDataPassProtocol {
    
    @IBOutlet weak var MainTableView: UITableView!
    
    func titleChangeFunc(text: String) {
        // Protocol이 아니라 table view cell을 추가하는 동작?
        return
    }
    
    func contentChangeFunc(text: String) {
        return
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memoData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as? TableViewCell else { return UITableViewCell() }
        
        cell.titleLabel.text = memoData[indexPath.row].titleText
        
        return cell
    }
    
    let memoData:[memoDataModel] = [
        memoDataModel(titleText: "오늘의 저녁 메뉴", contextText: "돼지고기 김치찌개"),
        memoDataModel(titleText: "날씨 좋다!", contextText: "가을 하늘 ☁️"),
        memoDataModel(titleText: "가을.. . 🍂", contextText: "노상의 계절 🍻"),
        memoDataModel(titleText: "🐶", contextText: "ㄱㅇㅇ,, 🥹")
    ]
    
    @IBAction func plusButtonTapped(_ sender: Any) {
        guard let addViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddViewController") as? AddViewController else { return }
        
        present(addViewController, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        MainTableView.delegate = self
        MainTableView.dataSource = self
    }
}

struct memoDataModel {
    let titleText: String
    let contextText: String
}
