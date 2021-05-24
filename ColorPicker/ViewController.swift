//
//  ViewController.swift
//  ColorPicker
//
//  Created by Maks Era on 23.05.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var colorArea: UIView!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var opacityLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var opacitySlider: UISlider!
    
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
        
        updateColor()
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        opacityLabel.text = String(format: "%.2f", opacitySlider.value)
    }

    @IBAction func rgbaChangeColor(_ sender: UISlider) {
        updateColor()
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        opacityLabel.text = String(format: "%.2f", opacitySlider.value)
    }
    
    
    private func updateColor() {
        colorArea.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: CGFloat(opacitySlider.value)
        )
    }
}

