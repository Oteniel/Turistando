//
//  RioGRioTableViewCell.swift
//  TuristandoOrio_Ote
//
//  Created by Oteniel on 9/25/16.
//  Copyright © 2016 Oteniel. All rights reserved.
//

import UIKit

class RioGRioTableViewCell: UITableViewCell {

    @IBOutlet weak var imagem: UIImageView!
    
    @IBOutlet weak var lbNomeDoPonto: UILabel!
    
    @IBOutlet weak var lbDescricao: UILabel!
       
    @IBOutlet weak var lbAvaliacao: UILabel!

    @IBOutlet weak var lbTipoDePonto: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
      imagem.layer.cornerRadius = 20
      imagem.clipsToBounds = true
      imagem.layer.borderColor =  UIColor.gray.cgColor
      imagem.layer.borderWidth = 1.0

    }

}
