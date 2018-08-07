//
//  ViewController.swift
//  colorMix v.2
//
//  Created by Admin on 07.08.2018.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorView.backgroundColor = .black
        updateColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
@IBOutlet weak var colorView: UIView!

    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    
    
    @IBAction func switchChanged(_ sender: UISwitch) {
       updateColor()
        }
    
    
    func updateColor(){
        
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        
        if redSwitch.isOn {
            red = 1
        }
        if greenSwitch.isOn{
            green = 1
        }
        if blueSwitch.isOn {
            blue = 1
        }
        let color = UIColor( red: red, green: green, blue: blue, alpha: 1 )
        colorView.backgroundColor = color
    }
}

