//
//  ViewController.swift
//  TrafficLight
//
//  Created by Alexey Shevchenko on 02.04.2024.
//

import UIKit

enum lightNow {
    case red, yellow, green
}

final class ViewController: UIViewController {
    @IBOutlet var redLabel: UIView!
    @IBOutlet var yellowLabel: UIView!
    @IBOutlet var greenLabel: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var lightNow: lightNow = .red
    private let lightIsOn: CGFloat = 1
    private let lightIsOf: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 15
        
        redLabel.alpha = lightIsOf
        yellowLabel.alpha = lightIsOf
        greenLabel.alpha = lightIsOf
        
        redLabel.layer.cornerRadius = 50
        yellowLabel.layer.cornerRadius = 50
        greenLabel.layer.cornerRadius = 50
    }

    @IBAction func ButtonPressed(_ sender: UIButton) {
        switch lightNow {
        case .red:
            redLabel.alpha = lightIsOn
            yellowLabel.alpha = lightIsOf
            greenLabel.alpha = lightIsOf
            lightNow = .yellow
        case .yellow:
            redLabel.alpha = lightIsOf
            yellowLabel.alpha = lightIsOn
            greenLabel.alpha = lightIsOf
            lightNow = .green
        case .green:
            redLabel.alpha = lightIsOf
            yellowLabel.alpha = lightIsOf
            greenLabel.alpha = lightIsOn
            lightNow = .red
        }
    }
}

