//
//  secondViewController.swift
//  GonzalezDavid_Exercise066
//
//  Created by David Gonzalez Jr on 12/4/17.
//  Copyright © 2017 David Gonzalez Jr. All rights reserved.
//

import UIKit

class secondViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    var values: [Float] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let color = UIColor(red: CGFloat(values[0]), green: CGFloat(values[1]), blue: CGFloat(values[2]), alpha: 1.0)
        
        redSlider.value = Float(values[0])
        greenSlider.value = Float(values[1])
        blueSlider.value = Float(values[2])
        
        colorView.backgroundColor = color

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func DisplayColor() {
        let red = CGFloat(redSlider.value), green = CGFloat(greenSlider.value), blue = CGFloat(blueSlider.value)
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
        colorView.backgroundColor = color
    }
    
    func randomDouble() -> Double {
        let valueDouble: Double = Double(arc4random_uniform(UINT32_MAX)) / Double(UINT32_MAX)
        return valueDouble
    }
    
    @IBAction func randomClick(sender: Any) {
        let red = CGFloat(randomDouble()), green = CGFloat(randomDouble()), blue = CGFloat(randomDouble())
        
        redSlider.value = Float(red)
        greenSlider.value = Float(green)
        blueSlider.value = Float(blue)
        
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        colorView.backgroundColor = color
    }

    @IBAction func redAdjust(sender: UISlider) {
        DisplayColor()
    }
    
    @IBAction func greenAdjust(sender: UISlider) {
        DisplayColor()
    }
    
    @IBAction func blueAdjust(sender: UISlider) {
        DisplayColor()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
