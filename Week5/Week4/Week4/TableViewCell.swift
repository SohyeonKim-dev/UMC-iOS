//
//  TableViewCell.swift
//  Week4
//
//  Created by 김소현 on 2022/10/11.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
        // 해당 Cell이 눌렸을 때, 메모 데이터를 갖고 ContentView를 그려야 한다.
    }
}
