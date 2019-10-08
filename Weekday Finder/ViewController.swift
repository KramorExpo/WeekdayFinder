//
//  ViewController.swift
//  Weekday Finder
//
//  Created by Евгений Крамор on 08/10/2019.
//  Copyright © 2019 Евгений Крамор. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearInfo: UITextField!
    @IBOutlet weak var dayInfo: UITextField!
    @IBOutlet weak var monthInfo: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func findDay() {
        let calendar = Calendar.current
        
        var dateComponents = DateComponents()
        dateComponents.day = Int(dayInfo.text!)
        dateComponents.month = Int(monthInfo.text!)
        dateComponents.year = Int(yearInfo.text!)
        
        let date = calendar.date(from: dateComponents)
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        
        let weekDay = dateFormatter.string(from: date!)
        
        resultLabel.text = weekDay
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }


}

