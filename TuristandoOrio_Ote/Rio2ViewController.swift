//
//  Rio2ViewController.swift
//  TuristandoOrio_Ote
//
//  Created by Oteniel on 10/12/16.
//  Copyright © 2016 Oteniel. All rights reserved.
//

import UIKit

class Rio2ViewController: UIViewController {

    @IBOutlet weak var lbCopa: UIButton!
    
    @IBOutlet weak var lbIpanema: UIButton!
    
    @IBOutlet weak var lbCentro: UIButton!
    
    @IBOutlet weak var lbBarraT: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbCopa.layer.cornerRadius = 20
        lbCopa.clipsToBounds = true
        lbCopa.layer.borderColor =  UIColor.gray.cgColor
        lbCopa.layer.borderWidth = 0.5
        
        lbIpanema.layer.cornerRadius = 20
        lbIpanema.clipsToBounds = true
        lbIpanema.layer.borderColor =  UIColor.gray.cgColor
        lbIpanema.layer.borderWidth = 0.5
        
        lbCentro.layer.cornerRadius = 20
        lbCentro.clipsToBounds = true
        lbCentro.layer.borderColor =  UIColor.gray.cgColor
        lbCentro.layer.borderWidth = 0.5
        
        lbBarraT.layer.cornerRadius = 20
        lbBarraT.clipsToBounds = true
        lbBarraT.layer.borderColor =  UIColor.gray.cgColor
        lbBarraT.layer.borderWidth = 0.5
        
    }
}
