//
//  ViewController.swift
//  ModelViewController
//
//  Created by user2 on 23/01/24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var PetName: UILabel!
    
    
    @IBOutlet weak var PetLegs: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let pets = Dog()
        
        pets.name = "jupiter"
        pets.legs = 4
        
        PetName.text = pets.name!
        PetLegs.text = "\(pets.legs!)"
    }


}


