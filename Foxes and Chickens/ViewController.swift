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
        chickenROne.isHidden = true
        chickenRTwo.isHidden = true
        chickenRThree.isHidden = true
        boatLPassengerL.isHidden = true
        boatLPassengerR.isHidden = true
        boatR.isHidden = true
        boatRPassengerL.isHidden = true
        boatRPassengerR.isHidden = true

        // Add OnClicks
        foxLOne.addTarget(self, 
            action:#selector(enterLBoat(_:)), 
            for: .touchUpInside)
        foxLTwo.addTarget(self, 
            action:#selector(enterLBoat(_:)), 
            for: .touchUpInside)
        foxLThree.addTarget(self, 
            action:#selector(enterLBoat(_:)), 
            for: .touchUpInside)
        chickenLOne.addTarget(self, 
            action:#selector(enterLBoat(_:)), 
            for: .touchUpInside)
        chickenLTwo.addTarget(self, 
            action:#selector(enterLBoat(_:)), 
            for: .touchUpInside)
        chickenLThree.addTarget(self, 
            action:#selector(enterLBoat(_:)), 
            for: .touchUpInside)
    }

    @IBAction func enterLBoat(sender: UIButton) {
        if (!sender.isHidden && !boatL.isHidden) {

            if (boatLPassengerL.isHidden) {
                boatLPassengerL.setImage(sender.image)
                sender.isHidden = true
                
                // Remove all events
                button.removeTarget(nil, 
                    action: nill, 
                    for: .allEvents)

                // Add func to move from boat          
                boatLPassengerL.addTarget(self, 
                    action:#selector(leaveBoatSeatL(_:)), 
                    for: .touchUpInside) 

            } else if (boatLPassengerR.isHidden) {
                boatLPassengerR.setImage(sender.image)
                sender.isHidden = true
            
                // Remove all events
                button.removeTarget(nil, 
                    action: nill, 
                    for: .allEvents)

                // Add func to move from boat          
                boatLPassengerR.addTarget(self, 
                    action:#selector(leaveBoatSeatR(_:)), 
                    for: .touchUpInside) 

            } else {
                // toast("No Room!!")
            }
        } 
    }

    @IBAction func enterRBoat(sender: UIButton) {
        if (!sender.isHidden && !boatR.isHidden) {

            if (boatRPassengerL.isHidden) {
                boatRPassengerL.setImage(sender.image)
                sender.isHidden = true

                // Remove all events
                button.removeTarget(nil, 
                    action: nill, 
                    for: .allEvents)

                // Add func to move from boat          
                boatRPassengerL.addTarget(self, 
                    action:#selector(leaveBoatSeatL(_:)), 
                    for: .touchUpInside) 
            
            } else if (boatRPassengerR.isHidden) {
                boatRPassengerR.setImage(sender.image)
                sender.isHidden = true

                // Remove all events
                button.removeTarget(nil, 
                    action: nill, 
                    for: .allEvents)

                // Add func to move from boat          
                boatRPassengerR.addTarget(self, 
                    action:#selector(leaveBoatSeatR(_:)), 
                    for: .touchUpInside) 

            } else {
                // toast("No Room!!")
            }
        } 
    }

    @IBAction func leaveBoatSeatL(sender: UIButton) {
        if (boatL.isHidden) {
            if (!boatRPassengerL.isHidden) {
                if (sender.image == foxROne.image) {
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
                if (sender.image == foxLOne.image) {
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
    }

    @IBAction func leaveBoatSeatR(sender: UIButton) {
        if (boatL.isHidden) {
            if (!boatRPassengerR.isHidden) {
                if (sender.image == foxROne.image) {
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
                if (sender.image == foxLOne.image) {
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
    }
    
    @IBAction func cross(_ sender: UIButton) {
        if (boatL.isHidden) {
            // Set right boat images
            boatRPassengerL.setImage(boatLPassengerL.image)
            boatRPassengerR.setImage(boatLPassengerR.image)

            // Set right passenger visibilities
            boatRPassengerL.isHidden = boatLPassengerL.isHidden
            boatRPassengerR.isHidden = boatLPassengerR.isHidden

            // Set left passenger visibilities
            boatLPassengerL.isHidden = true
            boatLPassengerR.isHidden = true

            // Put passengers on the sidelines
            leaveBoatSeatL(boatRPassengerL)
            leaveBoatSeatR(boatRPassengerR)

            // Set boat visibilities
            boatR.isHidden = false
            boatL.isHidden = true

            // Check safety
            checkSafety(false)
        
        } else {
            // Set left boat images
            boatLPassengerL.setImage(boatRPassengerL.image)
            boatLPassengerR.setImage(boatRPassengerR.image)

            // Set right passenger visibilities
            boatLPassengerL.isHidden = boatRPassengerL.isHidden
            boatLPassengerR.isHidden = boatRPassengerR.isHidden

            // Set left passenger visibilities
            boatRPassengerL.isHidden = true
            boatRPassengerR.isHidden = true

            // Put passengers on the sidelines
            leaveBoatSeatL(boatLPassengerL)
            leaveBoatSeatR(boatLPassengerR)

            // Set boat visibilities
            boatL.isHidden = false
            boatR.isHidden = true

            // Check safety
            checkSafety(true)
        }
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
            if (!ChickenLOne.isHidden) {
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
            if (!ChickenROne.isHidden) {
                chickens = chickens + 1
            }    
            if (!chickenRTwo.isHidden) {
                chickens = chickens + 1
            }    
            if (!chickenRThree.isHidden) {
                chickens = chickens + 1
            }    
        }
    }
}

