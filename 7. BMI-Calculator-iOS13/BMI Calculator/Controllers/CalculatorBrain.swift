//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by LIN SHI ZHENG on 12/12/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        let weightResult = getWeightResult(bmi: bmiValue)
        bmi = BMI(value: bmiValue, advice: weightResult.getAdvice(), color: weightResult.getColor())
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .clear
    }
    
    func getWeightResult(bmi: Float) -> Results {
        if bmi < 18.5 {
            return .underweight
        } else if bmi <= 24.9 {
            return .normal
        } else {
            return .overweight
        }
    }
}

enum Results: String {
    case overweight
    case underweight
    case normal
    
    func getAdvice() -> String {
        switch self {
        case .overweight:
            return "Eat more vegetables!"
        case .underweight:
            return "Eat more meats!"
        case .normal:
            return "Maintain your diet and lifestyle."
        }
    }
    
    func getColor() -> UIColor {
        switch self {
        case .overweight:
            return #colorLiteral(red: 1, green: 0.07450980693, blue: 0.02745098062, alpha: 1)
        case .underweight:
            return #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        case .normal:
            return #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        }
    }
}
