//
//  ViewController.swift
//  Bmi
//
//  Created by Madhuri Yerudkar on 03/12/22.
//

import UIKit
class FirstViewController: UIViewController {

    @IBOutlet weak var heightlbl: UILabel!
    @IBOutlet weak var heightValuelbl: UILabel!
    @IBOutlet weak var weightlbl: UILabel!
    @IBOutlet weak var weightValuelbl: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func heightSliderAction(_ sender: UISlider) {
        heightValuelbl.text = "\(Int(sender.value))cm"
    }
    
    @IBAction func weightSliderAction(_ sender: UISlider) {
        weightValuelbl.text = "\(Int(sender.value))kg"
        
    }
    
    @IBAction func calculateBtnPressed(_ sender: UIButton) {
        let weight = weightSlider.value
        let height = heightSlider.value
        
        calculatorBrain.bmiCalculation(height: height, weight: weight)
        performSegue(withIdentifier: "toSecond", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecond"{
            let destinationVC = segue.destination as? SecondViewController
            destinationVC?.bmivalue = calculatorBrain.getBmiValue()
            destinationVC?.advice = calculatorBrain.getAdvice()
            destinationVC?.color = calculatorBrain.getColor()
            }
    }
        
}

