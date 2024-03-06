//
//  ViewController.swift
//  CommonInputControls
//
//  Created by user2 on 25/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ButtonTab(_ sender: Any) {
        print("Redirect to next slide/login failed")
    }
    
    @IBAction func SwitchTab(_ sender: UISwitch) {
        if sender.isOn
        {
            print("Switch is on")
        }
        else{
            print("Switch is off")
        }
    }
    
    @IBAction func Slider(_ sender: UISlider) {
        print(sender.value)
    }
    
    
    @IBAction func ReturnKey(_ sender: UITextField) {
        if let text = sender.text{
            print(text)
        }
    }
    
    @IBAction func RespondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
    
    
}

