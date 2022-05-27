//
//  CalculatorBrain.swift
//  BMI-Calculator
//
//  Created by Ahmet Enes Irmak on 26.05.2022.
//

import UIKit

struct CalculatorBrain {
    
    //PROPERTIES
    
    var bmi: BMI?
    
    //FUNCTIONS
    
    func getBMIValue() -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
            return bmiTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "Unknown Value Added..."
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .brown
    }
    
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        switch bmiValue {
        case 0.0...18.5:
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: .blue)
        case 18.5...24.9:
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: .green)
        case 24.9...:
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: .red)
        default:
            print("Undefined Value")
        }
    }
    
    
    
    
    
    
    
}

