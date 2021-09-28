//
//  ViewController.swift
//  Palette
//
//  Created by Kirill Korotaev on 28.09.2021.
//

import UIKit

//MARK: - Outlets
class ViewController: UIViewController {

    @IBOutlet weak var screenColorView: UIView!
    
    @IBOutlet weak var redValueLabel: UILabel!
    @IBOutlet weak var greenValueLabel: UILabel!
    @IBOutlet weak var blueValueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
//MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        screenColorView.layer.cornerRadius = 15
        
        screenColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
            
            redValueLabel.text = String(format: "%.2f",redSlider.value)
            greenValueLabel.text = String(format: "%.2f",greenSlider.value)
            blueValueLabel.text = String(format: "%.2f",blueSlider.value)
    }

//MARK: - IBAction
    @IBAction func rgbSlider(_ sender: UISlider) {
        screenColorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        redValueLabel.text = String(format: "%.2f",redSlider.value)
        greenValueLabel.text = String(format: "%.2f",greenSlider.value)
        blueValueLabel.text = String(format: "%.2f",blueSlider.value)
        
    }

}

