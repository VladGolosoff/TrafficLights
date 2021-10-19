//
//  ViewController.swift
//  TrafficLights
//
//  Created by Владислав Голосов on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var button: UIButton!
    var pressButton = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 75
        redLight.alpha = 0.3
        yellowLight.layer.cornerRadius = 75
        yellowLight.alpha = 0.3
        greenLight.layer.cornerRadius = 75
        greenLight.alpha = 0.3
    }

    @IBAction func buttonPressed() {
        button.setTitle("Next", for: .normal)
        
        switch pressButton {
        case 0 :
            redLight.alpha = 1
            greenLight.alpha = 0.3
            pressButton = 1
        case 1:
            yellowLight.alpha = 1
            redLight.alpha = 0.3
            pressButton = 2
        case 2:
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            pressButton = 0
            
        default:
        break
        }
      
        }
    }
    


