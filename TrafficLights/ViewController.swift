//
//  ViewController.swift
//  TrafficLights
//
//  Created by Владислав Голосов on 19.10.2021.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IB Outlets
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var button: UIButton!
    var pressButton = 0
    
    //MARK: - Override Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
    }
    
    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
    }

    //MARK: - IB Actions
    
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
    


