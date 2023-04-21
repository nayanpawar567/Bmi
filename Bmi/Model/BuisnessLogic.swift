//
//  BuisnessLogic.swift
//  Bmi
//
//  Created by Pratik Gavit on 04/12/22.
//

import Foundation
import UIKit
struct CalculatorBrain{
    var bmiModelobject: BmiModel?
    
    mutating func bmiCalculation(height:Float,weight:Float){
        let bmiValue = weight*10000/(height*height)

        if bmiValue <= 18.5{
            bmiModelobject = BmiModel(value: bmiValue, advice: "UnderWeight, Eat more.", color: UIColor(red: 0, green: 112, blue: 255, alpha: 1))
            
        } else if bmiValue > 24.9{
            bmiModelobject = BmiModel(value: bmiValue, advice: "Overweight, Eat less.", color: .red)
            
        } else {
            bmiModelobject = BmiModel(value: bmiValue, advice: "Correct, You are Fit!", color: .green)
        }
    }
    
    func getBmiValue() -> String{
        let bmiResultString = String(format: "%.1f", bmiModelobject?.value ?? 0.0)
        return bmiResultString
    }
    
    func getAdvice() ->String{
        return bmiModelobject?.advice ?? "No advice"
    }
    
    func getColor() ->UIColor{
        return bmiModelobject?.color ?? .white
    }
    
}
