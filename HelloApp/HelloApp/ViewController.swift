 //
//  ViewController.swift
//  HelloApp
//
//  Created by user2 on 25/08/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var textView: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func greetButton(_ sender: Any) {
        textView.text=textField.text
    }
    
    

}

