//
//  TimeViewController.swift
//  Week6
//
//  Created by 김소현 on 2022/10/31.
//

import UIKit

class TimeViewController: UIViewController {
    let timeSelector: Selector = #selector(TimeViewController.updateTime)
    let timeInterval = 1.0
    var alarmTime: String?
    var alertFlag = false

    @IBOutlet var currentTime: UILabel!
    @IBOutlet var pickerTime: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        Timer.scheduledTimer(timeInterval: timeInterval, target: self, selector: timeSelector, userInfo: nil, repeats: true)
    }
    
    @IBAction func changeDatePicker(_ sender: UIDatePicker) {
        let datePickerView = sender
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        pickerTime.text = "언제 일어나? : " + formatter.string(from: datePickerView.date)
        
        formatter.dateFormat = "hh:mm aaa"
        alarmTime = formatter.string(from: datePickerView.date)
        
        DispatchQueue.main.async {
            for color in colorList {
                datePickerView.tintColor = color
            }
            // 여기에서 호출하니까, 변경 시 한번만 반영됨 (위치 고민하기)
        }
    }

    @objc func updateTime() {
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm:ss"
        currentTime.text = "지금은 바로! : " + formatter.string(from: date as Date)

        formatter.dateFormat = "hh:mm aaa"
        let currentTime = formatter.string(from: date as Date)
        
        if alarmTime == currentTime {
            if !alertFlag {
                let lampOnAlert = UIAlertController(title: "알림", message: "설정된 시간입니다!", preferredStyle: UIAlertController.Style.alert)
                let onAction = UIAlertAction(title: "일어나자 😇", style: UIAlertAction.Style.default, handler: nil)
                lampOnAlert.addAction(onAction)
                present(lampOnAlert, animated: true, completion: nil)
                alertFlag = true
            } else {
                alertFlag = false
            }
        }
    }
}
