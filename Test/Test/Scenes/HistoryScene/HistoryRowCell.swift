//
//  HistoryRowCell.swift
//  Test
//
//  Created by Ratchapol Pattarakanoksiri on 17/5/2566 BE.
//

import UIKit

class HistoryRowCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateTimeLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func bindData(titleString: String, dateTime: String) {
        titleLabel.text = titleString
        dateTimeLabel.text = dateTime
    }
}
