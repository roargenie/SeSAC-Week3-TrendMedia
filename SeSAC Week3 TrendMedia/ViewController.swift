//
//  ViewController.swift
//  SeSAC Week3 TrendMedia
//
//  Created by 이명진 on 2022/07/18.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var dateLabel2: UILabel!
    
    @IBOutlet var dateLabelCollection: [UILabel]!
    
    let format = DateFormatter()
    
    @IBOutlet weak var leadingConstraints: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        format.dateFormat = "yyyy/MM/dd"
        
        leadingConstraints.constant = 120
        
        
        
        
    }
    
    func configureLabelDesign() {
        for i in dateLabelCollection {
            i.font = .boldSystemFont(ofSize: 20)
            i.textColor = .green
            
        }
        
        let labelArray = [dateLabel, dateLabel2]
        for i in labelArray {
            i?.font = .boldSystemFont(ofSize: 20)
            i?.textColor = .green
            
        }
        
    }
    
    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        
        
        
        dateLabel.text = format.string(from: sender.date)
        
        
    }
    
    
    
    
    
    


}

