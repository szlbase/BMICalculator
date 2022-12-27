//
//  ResultsViewController.swift
//  BMI Calculator
//
//  Created by LIN SHI ZHENG on 12/12/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var bmiValue: String?
    var advice: String?
    var color: UIColor?

    @IBOutlet weak var bmiLbl: UILabel!
    @IBOutlet weak var adviceLBl: UILabel!
    
    @IBOutlet weak var background: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLbl.text = bmiValue
        adviceLBl.text = advice
        background.backgroundColor = color
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }

}
