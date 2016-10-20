//
//  RioViewController.swift
//  TuristandoOrio_Ote
//
//  Created by Oteniel on 10/11/16.
//  Copyright © 2016 Oteniel. All rights reserved.
//

import UIKit

class RioViewController: UIViewController {
    
    @IBOutlet weak var btRJ: UIButton!
    
    @IBOutlet weak var btGR: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        btRJ.layer.cornerRadius = 20
        btRJ.clipsToBounds = true
        btRJ.layer.borderColor =  UIColor.gray.cgColor
        btRJ.layer.borderWidth = 0.5
        
        btGR.layer.cornerRadius = 20
        btGR.clipsToBounds = true
        btGR.layer.borderColor =  UIColor.gray.cgColor
        btGR.layer.borderWidth = 0.5
        
    }

    override func prepare(for next: UIStoryboardSegue, sender: Any?) {
        if next.identifier == "rioGrioSegue" {
            _ = next.destination as? ViewController
                
                }
            }
}
