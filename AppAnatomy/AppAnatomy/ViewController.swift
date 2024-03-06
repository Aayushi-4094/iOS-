//
//  ViewController.swift
//  AppAnatomy
//
//  Created by user2 on 29/01/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var DidFinishLaunch: UILabel!
    
    @IBOutlet weak var ConfigCount: UILabel!
    
    @IBOutlet weak var SceneDidEnterBG: UILabel!
    
    @IBOutlet weak var WillConnectToLabel: UILabel!
    
    @IBOutlet weak var SceneDidBecomeActive: UILabel!
    
    @IBOutlet weak var SceneWillResignActive: UILabel!
    
    @IBOutlet weak var SceneWillEnterFG: UILabel!
    
    var scenewillenterbg = 0
    var scenewillenterfg = 0
    var scenewillresignactive = 0
    var scenedidbecomeactive = 0
    var willconnecttocount = 0
    
    var appdelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    func updateView(){
        DidFinishLaunch.text = "the app has launched \(appdelegate.launchCount) times"
        ConfigCount.text = "Configured \(appdelegate.configCount) times"
        SceneDidEnterBG.text = "sceneEnterBG \(scenewillenterbg)"
        SceneWillEnterFG.text = "sceneEnterFG \(scenewillenterfg)"
        SceneDidBecomeActive.text = "sceneDidBecomeActive \(scenedidbecomeactive)"
        SceneWillResignActive.text = "sceneDidResignActive \(scenewillresignactive)"

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

