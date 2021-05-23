//
//  ViewController.swift
//  ColorPicker
//
//  Created by Maks Era on 23.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorArea: UIView!
    
    @IBOutlet weak var redValue: UILabel!
    @IBOutlet weak var greenValue: UILabel!
    @IBOutlet weak var blueValue: UILabel!
    @IBOutlet weak var opacityValue: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var opacitySlider: UISlider!
    
//    private var backgroundColorView =
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        colorArea.layer.cornerRadius = 20
        colorArea.layer.borderWidth = 1
        colorArea.layer.borderColor = .init(
            red: 0,
            green: 0,
            blue: 0,
            alpha: 1
        )
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        
        opacitySlider.minimumValue = 0
        opacitySlider.maximumValue = 1
    }
    
    private func updateColor() {
        colorArea.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(opacitySlider.value)
        )
    }

    @IBAction func changedRedColor() {
        redValue.text = String(format: "%.0f", redSlider.value)
        updateColor()
    }
    
    @IBAction func changeGreenColor() {
        greenValue.text = String(format: "%.0f", greenSlider.value)
        updateColor()
    }
    
    @IBAction func changeBlueColor() {
        blueValue.text = String(format: "%.0f", blueSlider.value)
        updateColor()
    }
    
    @IBAction func changeOpacityColor() {
        opacityValue.text = String(format: "%.0f", opacitySlider.value)
        updateColor()
    }
    
}

