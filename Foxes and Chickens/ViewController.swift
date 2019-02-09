//
//  ViewController.swift
//  Foxes and Chickens
//
//  Created by Easter, Alice on 2/5/19.
//  Copyright © 2019 Easter, Alice. All rights reserved.
//

import UIKit
import AVFoundation

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
    @IBOutlet weak var moveCounter: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setStage()

        // Add OnClicks
        foxLOne.addTarget(self,
                          action:#selector(enterLBoat),
                          for: .touchUpInside)
        foxLTwo.addTarget(self,
                          action:#selector(enterLBoat),
                          for: .touchUpInside)
        foxLThree.addTarget(self,
                            action:#selector(enterLBoat),
                            for: .touchUpInside)
        chickenLOne.addTarget(self,
                              action:#selector(enterLBoat),
                              for: .touchUpInside)
        chickenLTwo.addTarget(self,
                              action:#selector(enterLBoat),
                              for: .touchUpInside)
        chickenLThree.addTarget(self,
                                action:#selector(enterLBoat),
                                for: .touchUpInside)
        
        // Right side
        foxROne.addTarget(self,
                          action:#selector(enterRBoat),
                          for: .touchUpInside)
        foxRTwo.addTarget(self,
                          action:#selector(enterRBoat),
                          for: .touchUpInside)
        foxRThree.addTarget(self,
                            action:#selector(enterRBoat),
                            for: .touchUpInside)
        chickenROne.addTarget(self,
                              action:#selector(enterRBoat),
                              for: .touchUpInside)
        chickenRTwo.addTarget(self,
                              action:#selector(enterRBoat),
                              for: .touchUpInside)
        chickenRThree.addTarget(self,
                                action:#selector(enterRBoat),
                                for: .touchUpInside)
        
        // Boats
        boatLPassengerL.addTarget(self,
                                  action:#selector(leaveBoatSeatL),
                                  for: .touchUpInside)
        boatLPassengerR.addTarget(self,
                                  action:#selector(leaveBoatSeatR),
                                  for: .touchUpInside)
        boatRPassengerL.addTarget(self,
                                  action:#selector(leaveBoatSeatL),
                                  for: .touchUpInside)
        boatRPassengerR.addTarget(self,
                                  action:#selector(leaveBoatSeatR),
                                  for: .touchUpInside)
    }
    
    func setStage() {
        foxLOne.isHidden = false
        foxLTwo.isHidden = false
        foxLThree.isHidden = false
        chickenLOne.isHidden = false
        chickenLTwo.isHidden = false
        chickenLThree.isHidden = false
        foxROne.isHidden = true
        foxRTwo.isHidden = true
        foxRThree.isHidden = true
        chickenROne.isHidden = true
        chickenRTwo.isHidden = true
        chickenRThree.isHidden = true
        boatL.isHidden = false
        boatLPassengerL.isHidden = true
        boatLPassengerR.isHidden = true
        boatR.isHidden = true
        boatRPassengerL.isHidden = true
        boatRPassengerR.isHidden = true
        moveCounter.text = "0"
    }

    @IBAction func enterLBoat(sender: UIButton) {
        if (!sender.isHidden && !boatL.isHidden) {

            if (boatLPassengerL.isHidden) {
                // set passenger image
                boatLPassengerL.setImage(sender.image(for: .normal)!, for: .normal)
                
                // set sprite visibility
                sender.isHidden = true
                boatLPassengerL.isHidden = false

            } else if (boatLPassengerR.isHidden) {
                // set passenger image
                boatLPassengerR.setImage(sender.image(for: .normal)!, for: .normal)
                
                // set sprite visibility
                sender.isHidden = true
                boatLPassengerR.isHidden = false

            } else {
                // toast("No Room!!")
            }
        } 
    }

    @IBAction func enterRBoat(sender: UIButton) {
        if (!sender.isHidden && !boatR.isHidden) {

            if (boatRPassengerL.isHidden) {
                // set passenger image
                boatRPassengerL.setImage(sender.image(for: .normal)!, for: .normal)
                
                // set sprite visibility
                sender.isHidden = true
                boatRPassengerL.isHidden = false
            
            } else if (boatRPassengerR.isHidden) {
                // set passenger image
                boatRPassengerR.setImage(sender.image(for: .normal)!, for: .normal)
                    
                // set sprite visibility
                sender.isHidden = true
                boatRPassengerR.isHidden = false

            } else {
                // toast("No Room!!")
            }
        } 
    }

    @IBAction func leaveBoatSeatL(sender: UIButton) {
        if (boatL.isHidden) {
            if (!boatRPassengerL.isHidden) {
                if (sender.image(for: .normal)!.isEqual(foxROne.image(for: .normal))) {
                    if (foxROne.isHidden) {
                        foxROne.isHidden = false

                    } else if (foxRTwo.isHidden) {
                        foxRTwo.isHidden = false

                    } else {
                        foxRThree.isHidden = false
                    }
                } else {
                    if (chickenROne.isHidden) {
                        chickenROne.isHidden = false
                    
                    } else if (chickenRTwo.isHidden) {
                        chickenRTwo.isHidden = false
        
                    } else {
                        chickenRThree.isHidden = false
                    }
                }
            }
        } else {
            if (!boatLPassengerL.isHidden) {
                if (sender.image(for: .normal)!.isEqual(foxLOne.image(for: .normal)!)) {
                    if (foxLOne.isHidden) {
                        foxLOne.isHidden = false

                    } else if (foxLTwo.isHidden) {
                        foxLTwo.isHidden = false

                    } else {
                        foxLThree.isHidden = false
                    }
                } else {
                    if (chickenLOne.isHidden) {
                        chickenLOne.isHidden = false
                    
                    } else if (chickenLTwo.isHidden) {
                        chickenLTwo.isHidden = false
        
                    } else {
                        chickenLThree.isHidden = false
                    }
                }
            }
        }
        
        sender.isHidden = true
    }

    @IBAction func leaveBoatSeatR(sender: UIButton) {
        if (boatL.isHidden) {
            if (!boatRPassengerR.isHidden) {
                if (sender.image(for: .normal)!.isEqual(foxROne.image(for: .normal)!)) {
                    if (foxROne.isHidden) {
                        foxROne.isHidden = false

                    } else if (foxRTwo.isHidden) {
                        foxRTwo.isHidden = false

                    } else {
                        foxRThree.isHidden = false
                    }
                } else {
                    if (chickenROne.isHidden) {
                        chickenROne.isHidden = false
                    
                    } else if (chickenRTwo.isHidden) {
                        chickenRTwo.isHidden = false
        
                    } else {
                        chickenRThree.isHidden = false
                    }
                }
            }
        } else {
            if (!boatLPassengerR.isHidden) {
                if (sender.image(for: .normal)!.isEqual(foxLOne.image(for: .normal)!)) {
                    if (foxLOne.isHidden) {
                        foxLOne.isHidden = false

                    } else if (foxLTwo.isHidden) {
                        foxLTwo.isHidden = false

                    } else {
                        foxLThree.isHidden = false
                    }
                } else {
                    if (chickenLOne.isHidden) {
                        chickenLOne.isHidden = false
                    
                    } else if (chickenLTwo.isHidden) {
                        chickenLTwo.isHidden = false
        
                    } else {
                        chickenLThree.isHidden = false
                    }
                }
            }
        }
        
        sender.isHidden = true
    }
    
    @IBAction func cross(_ sender: UIButton) {
        if (boatR.isHidden) {
            // Set right boat images
            boatRPassengerL.setImage(boatLPassengerL.image(for: .normal)!, for: .normal)
            boatRPassengerR.setImage(boatLPassengerR.image(for: .normal)!, for: .normal)

            // Set right passenger visibilities
            boatRPassengerL.isHidden = boatLPassengerL.isHidden
            boatRPassengerR.isHidden = boatLPassengerR.isHidden

            // Set left passenger visibilities
            boatLPassengerL.isHidden = true
            boatLPassengerR.isHidden = true
            
            // Set boat visibilities
            boatR.isHidden = false
            boatL.isHidden = true

            // Put passengers on the sidelines
            leaveBoatSeatL(sender: boatRPassengerL)
            leaveBoatSeatR(sender: boatRPassengerR)

            // Check safety
            checkSafety(left: true)
            checkSafety(left: false)
        
        } else {
            // Set left boat images
            boatLPassengerL.setImage(boatRPassengerL.image(for: .normal)!, for: .normal)
            boatLPassengerR.setImage(boatRPassengerR.image(for: .normal)!, for: .normal)

            // Set right passenger visibilities
            boatLPassengerL.isHidden = boatRPassengerL.isHidden
            boatLPassengerR.isHidden = boatRPassengerR.isHidden

            // Set left passenger visibilities
            boatRPassengerL.isHidden = true
            boatRPassengerR.isHidden = true
            
            // Set boat visibilities
            boatL.isHidden = false
            boatR.isHidden = true

            // Put passengers on the sidelines
            leaveBoatSeatL(sender: boatLPassengerL)
            leaveBoatSeatR(sender: boatLPassengerR)

            // Check safety
            checkSafety(left: true)
            checkSafety(left: false)
        }
        
        moveCounter.text = String(Int(moveCounter.text!)! + 1)
    }

    func checkSafety(left: Bool) {
        var chickens = 0
        var foxes = 0

        if (left) {
            if (!foxLOne.isHidden) {
                foxes = foxes + 1
            }    
            if (!foxLTwo.isHidden) {
                foxes = foxes + 1
            }    
            if (!foxLThree.isHidden) {
                foxes = foxes + 1
            }    
            if (!chickenLOne.isHidden) {
                chickens = chickens + 1
            }    
            if (!chickenLTwo.isHidden) {
                chickens = chickens + 1
            }    
            if (!chickenLThree.isHidden) {
                chickens = chickens + 1
            }    
        } else {
            if (!foxROne.isHidden) {
                foxes = foxes + 1
            }    
            if (!foxRTwo.isHidden) {
                foxes = foxes + 1
            }    
            if (!foxRThree.isHidden) {
                foxes = foxes + 1
            }    
            if (!chickenROne.isHidden) {
                chickens = chickens + 1
            }    
            if (!chickenRTwo.isHidden) {
                chickens = chickens + 1
            }    
            if (!chickenRThree.isHidden) {
                chickens = chickens + 1
            }    
        }
        
        if (foxes > chickens && chickens != 0) {
            playSound(file: "lose", fileType: "mp3")
            
        } else if (!left && foxes == 3 && chickens == 3) {
            playSound(file: "win", fileType: "mp3")
        }
    }
    
    @IBAction func resetGame(_ sender: Any) {
        setStage()
    }
    
    // Taken from http://tinyurl.com/y8zpj66f
    func playSound(file:String,
                   fileType:String) {
        var player: AVAudioPlayer?
        
        let path = Bundle.main.path(forResource: file, ofType: fileType)
        let url = URL(fileURLWithPath: path ?? "")
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            usleep(700000)
        } catch let error {
            print(error.localizedDescription)
        }
    }
}

