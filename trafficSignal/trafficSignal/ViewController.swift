//
//  ViewController.swift
//  trafficSignal
//
//  Created by user2 on 25/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func unwindToRed(unwindSegue:UIStoryboardSegue){
        
        
    }
    
    @IBAction func YellowButtonTab(_ sender: UIButton) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    
    @IBAction func GreenButtonTab(_ sender: UIButton) {
        if segueSwitch.isOn{
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
}

