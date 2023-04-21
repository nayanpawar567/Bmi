//
//  SecondViewController.swift
//  Bmi
//
//  Created by Pratik Gavit on 03/12/22.
//

import UIKit

class SecondViewController: UIViewController{
    
    @IBOutlet weak var bckgrndImg: UIImageView!
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var resultVslueLbl: UILabel!
    @IBOutlet weak var thirdLbl: UILabel!
    
    var bmivalue:String?
    var advice:String?
    var color:UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultVslueLbl.text = bmivalue
        thirdLbl.text = advice
        bckgrndImg.backgroundColor = color
        
    }
  
    @IBAction func recalculateBtnPressed(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
 
}
