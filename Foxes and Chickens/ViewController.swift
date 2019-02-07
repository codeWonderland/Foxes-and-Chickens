//
//  ViewController.swift
//  Foxes and Chickens
//
//  Created by Easter, Alice on 2/5/19.
//  Copyright © 2019 Easter, Alice. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var chickenLOne: UIButton!
    @IBOutlet weak var chickenLTwo: UIButton!
    @IBOutlet weak var chickenLThree: UIButton!
    @IBOutlet weak var foxLOne: UIButton!
    @IBOutlet weak var foxLTwo: UIButton!
    @IBOutlet weak var foxLThree: UIButton!
    @IBOutlet weak var boatLPassengerL: UIButton!
    @IBOutlet weak var boatLPassengerR: UIButton!
    @IBOutlet weak var boatL: UIImageView!
    @IBOutlet weak var chickenROne: UIButton!
    @IBOutlet weak var chickenRTwo: UIButton!
    @IBOutlet weak var chickenRThree: UIButton!
    @IBOutlet weak var foxROne: UIButton!
    @IBOutlet weak var foxRTwo: UIButton!
    @IBOutlet weak var foxRThree: UIButton!
    @IBOutlet weak var boatRPassengerL: UIButton!
    @IBOutlet weak var boatRPassengerR: UIButton!
    @IBOutlet weak var boatR: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        foxROne.isHidden = true
        foxRTwo.isHidden = true
        foxRThree.isHidden = true
        
    }
    
    @IBAction func cross(_ sender: UIButton) {
    
    }
}

