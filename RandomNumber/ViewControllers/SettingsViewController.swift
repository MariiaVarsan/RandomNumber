//
//  SettingsViewController.swift
//  RandomNumber
//
//  Created by Варсан Мария on 31.03.2022.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet var minimumValueTF: UITextField!
    @IBOutlet var maximumValueTF: UITextField!
    
    var minimumValue: String!
    var maximumValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        minimumValueTF.text = minimumValue
        maximumValueTF.text = maximumValue
        
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
    
    @IBAction func cancelButtonPressedTW() {
        dismiss(animated: true)
    }
    
    
}
