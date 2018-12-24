//
//  ViewController.swift
//  GonzalezDavid_Exercise066
//
//  Created by David Gonzalez Jr on 12/4/17.
//  Copyright © 2017 David Gonzalez Jr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.backgroundColor = UIColor.black
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let svc: secondViewController = segue.destination as! secondViewController
        if let red = Float(redLabel.text!), let green = Float(greenLabel.text!), let blue = Float(blueLabel.text!) {
            svc.values.append(red)
            svc.values.append(green)
            svc.values.append(blue)
        } else {
            svc.values.append(1.0)
            svc.values.append(1.0)
            svc.values.append(1.0)
        }
    }
    
    @IBAction func unwindToFirst(segue: UIStoryboardSegue) {
        let svc: secondViewController = segue.source as! secondViewController
        
        colorView.backgroundColor = svc.colorView.backgroundColor
        redLabel.text = "\(CGFloat(svc.redSlider.value * 255))"
        greenLabel.text = "\(CGFloat(svc.greenSlider.value * 255))"
        blueLabel.text = "\(CGFloat(svc.blueSlider.value * 255))"
    }

}

