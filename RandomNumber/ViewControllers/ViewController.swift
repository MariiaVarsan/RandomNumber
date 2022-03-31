//
//  ViewController.swift
//  RandomNumber
//
//  Created by Варсан Мария on 30.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var minimumValueLabel: UILabel!
    @IBOutlet var maximumValueLabel: UILabel!
    @IBOutlet var randomValueLabel: UILabel!
    @IBOutlet var getRandomValueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getRandomValueButton.layer.cornerRadius = 10
        
        let color3 = UIColor(red: 209 / 255, green: 107 / 255, blue: 165 / 255 , alpha: 1.0).cgColor
        let color2 = UIColor(red: 134 / 255, green: 168 / 255, blue: 231 / 255, alpha: 1.0).cgColor
        let color1 = UIColor(red: 95 / 255, green: 251 / 255, blue: 241 / 255, alpha: 1.0).cgColor
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [color1, color2, color3]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }

    @IBAction func getRandomNumberButtonTapped() {
        let minimumNumber = Int(minimumValueLabel.text ?? "") ?? 0
        let maximumNumber = Int(maximumValueLabel.text ?? "") ?? 100
        
        randomValueLabel.text = String(Int.random(in: minimumNumber...maximumNumber))
    }
    
}

