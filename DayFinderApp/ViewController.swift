//
//  ViewController.swift
//  DayFinderApp
//
//  Created by janis.muiznieks on 01/02/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dayTextField: UITextField!
    
    @IBOutlet weak var monthTextField: UITextField!
    
    @IBOutlet weak var yearTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet weak var findButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("ViewController first lunch")
    }


    @IBAction func findWeekdayTapped(_ sender: Any) {
        //calendar
        //DateComponents()
        //dateComponent.day =  dayTextField.text
        //calendar.date(from: dateComponets
        
        //DateFormatter()
        
        //resultLabel.text = result
        
    }
}

