//
//  ViewController.swift
//  Palette
//
//  Created by Kirill Korotaev on 28.09.2021.
//

import UIKit

//MARK: - Outlets
class ViewController: UIViewController {

    @IBOutlet weak var showTaskView: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
//MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showTaskView.layer.cornerRadius = 15
        
        showTaskView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
            
            redLabel.text = String(format: "%.2f",redSlider.value)
            greenLabel.text = String(format: "%.2f",greenSlider.value)
            blueLabel.text = String(format: "%.2f",blueSlider.value)
    }

//MARK: - IBAction
    @IBAction func rgbSlider(_ sender: UISlider) {
        showTaskView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
        
        redLabel.text = String(format: "%.2f",redSlider.value)
        greenLabel.text = String(format: "%.2f",greenSlider.value)
        blueLabel.text = String(format: "%.2f",blueSlider.value)
        
    }

}

