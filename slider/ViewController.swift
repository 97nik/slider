//
//  ViewController.swift
//  slider
//
//  Created by Никита Микрюков on 27.06.2020.
//  Copyright © 2020 Никита Микрюков. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var sliderOne: UISlider!
    @IBOutlet weak var sliderTwo: UISlider!
    
    @IBOutlet weak var sliderThree: UISlider!

    
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
           
        // Slider
        sliderOne.value = 1
        sliderOne.minimumValue = 0
        sliderOne.maximumValue = 250
        
        
        sliderTwo.value = 1
        sliderTwo.minimumValue = 0
        sliderTwo.maximumValue = 250
        
        sliderThree.value = 1
        sliderThree.minimumValue = 0
        sliderThree.maximumValue = 250
        
    
       colorView.backgroundColor = UIColor.init(red: 200, green:100 , blue: 100, alpha: 1)
        
    }

    
    
    @IBAction func sliderA() {
        let sliderValue = CGFloat(sliderOne.value)/250
         let sliderValueTwo = CGFloat(sliderTwo.value)
        
        colorView.backgroundColor = UIColor.init(red: sliderValue, green:sliderValueTwo , blue: 0, alpha: 1)
    }
    
    @IBAction func sliderAB() {
        let sliderValue = CGFloat(sliderOne.value)
         let sliderValueTwo = CGFloat(sliderTwo.value)/250
         colorView.backgroundColor = UIColor.init(red: sliderValue, green:sliderValueTwo , blue: 0, alpha: 1)
        
    }
    
    @IBAction func sliderAC() {
        let sliderValue = CGFloat(sliderOne.value)
        let sliderValueTwo = CGFloat(sliderTwo.value)/250
        let sliderValueThree = CGFloat(sliderThree.value)/250
                colorView.backgroundColor = UIColor.init(red: sliderValue, green:sliderValueTwo , blue: sliderValueThree, alpha: 1)
    }
    
}
