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

        redLabel.layer.cornerRadius = 50
        yellowLabel.layer.cornerRadius = 50
        greenLabel.layer.cornerRadius = 50
    }

    @IBAction func startButton(_ sender: UIButton) {
        sender.setTitle("NEXT", for: .normal)
        if redLabel.alpha == 0.5 && yellowLabel.alpha == 0.5 && greenLabel.alpha == 0.5 {
            redLabel.alpha = 1
        } else if redLabel.alpha == 1 {
            redLabel.alpha = 0.5
            yellowLabel.alpha = 1
        } else if yellowLabel.alpha == 1 {
            yellowLabel.alpha = 0.5
            greenLabel.alpha = 1
        } else if greenLabel.alpha == 1 {
            greenLabel.alpha = 0.5
            redLabel.alpha = 1
        }
    }
}
