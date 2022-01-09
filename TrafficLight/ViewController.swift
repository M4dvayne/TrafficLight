//
//  ViewController.swift
//  TrafficLight
//
//  Created by Вячеслав Кремнев on 1/7/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    @IBOutlet weak var startLightButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 60
        yellowLightView.layer.cornerRadius = 60
        greenLightView.layer.cornerRadius = 60
        startLightButton.layer.cornerRadius = 10
        
        redLightView.alpha = 0.1
        yellowLightView.alpha = 0.1
        greenLightView.alpha = 0.1
    }
    
    @IBAction func startButtonSwitch(_ sender: UIButton) {
        sender.tag += 1

        if sender.tag == 1 {
            greenLightView.alpha = 0.1
            redLightView.alpha = 1
            startLightButton.setTitle("NEXT", for: .normal)
        } else if sender.tag == 2 {
            yellowLightView.alpha = 1
            redLightView.alpha = 0.1
        } else if sender.tag == 3 {
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.1
            sender.tag = 0
        }
    }
}

