//
//  ViewController.swift
//  TrafficLight
//
//  Created by Ильнар Ижгузин on 26.01.2024.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet var redLabel: UIView!
    @IBOutlet var yellowLabel: UIView!
    @IBOutlet var greenLabel: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        redLabel.layer.cornerRadius = redLabel.frame.width / 2
        yellowLabel.layer.cornerRadius = yellowLabel.frame.width / 2
        greenLabel.layer.cornerRadius = greenLabel.frame.width / 2
    }

    @IBAction func startButton(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)

        let ligtingOff = 0.5
        let lightingOn = 1.0

        if redLabel.alpha == ligtingOff && yellowLabel.alpha == ligtingOff && greenLabel.alpha == ligtingOff {
            redLabel.alpha = lightingOn
        } else if redLabel.alpha == lightingOn {
            redLabel.alpha = ligtingOff
            yellowLabel.alpha = lightingOn
        } else if yellowLabel.alpha == lightingOn {
            yellowLabel.alpha = ligtingOff
            greenLabel.alpha = lightingOn
        } else if greenLabel.alpha == lightingOn {
            greenLabel.alpha = ligtingOff
            redLabel.alpha = lightingOn
        }
    }
}
