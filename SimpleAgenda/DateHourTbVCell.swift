//
//  DateHourTbVCell.swift
//  SimpleAgenda
//
//  Created by Francisco Júnior on 1/8/17.
//  Copyright © 2017 JRTheDeveloper. All rights reserved.
//

import UIKit

extension Date {
    
    func getString() -> String {
        let formater = DateFormatter()
        formater.dateFormat = "d/m/Y H:m"
        return formater.string(from: self)
    }
    
}


class DateHourTbVCell: UITableViewCell, UIPickerViewDelegate {
    
    @IBOutlet weak var valueField: UILabel!
    @IBOutlet weak var dateTimePicker: UIDatePicker!
    @IBOutlet weak var dateTP_Height: NSLayoutConstraint!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        dateTimePicker.addTarget(self, action: #selector(DateHourTbVCell.updateLabelFromPicker), for: .valueChanged)
        
        updateLabelFromPicker()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func updateLabelFromPicker(){
        
        valueField.text = dateTimePicker.date.getString()
    }

}
