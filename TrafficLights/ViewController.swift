//
//  ViewController.swift
//  TrafficLights
//
//  Created by Maksim Grischenko on 13.04.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var changeLightButton: UIButton!
    
    var countLights = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        redLight.layer.cornerRadius = redLight.frame.size.width / 2
        redLight.alpha = 0.3
        
        yellowLight.layer.cornerRadius = yellowLight.frame.size.width / 2
        yellowLight.alpha = 0.3
        
        greenLight.layer.cornerRadius = greenLight.frame.size.width / 2
        greenLight.alpha = 0.3
        
        changeLightButton.layer.cornerRadius = 10
    }


    @IBAction func changeLightButtonPressed() {
        changeLightButton.setTitle("Next", for: .normal)
        if countLights == 0 {
            greenLight.alpha = 0.3
            redLight.alpha = 1.0
            countLights += 1
        } else if countLights == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1.0
            countLights += 1
        } else if countLights == 2 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1.0
            countLights = 0
        }
    }
}


