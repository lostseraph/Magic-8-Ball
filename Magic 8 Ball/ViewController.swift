//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Roscoe Sabale on 2/8/18.
//  Copyright © 2018 LostSeRaph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randNum = 0

    @IBOutlet weak var ballImage: UIImageView!
    
    @IBAction func ask(_ sender: Any) {
        updateBallImage()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateBallImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateBallImage() {
        randNum = Int(arc4random_uniform(5))
        
        ballImage.image = UIImage(named: "ball\(randNum+1)")
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateBallImage()
    }
}

