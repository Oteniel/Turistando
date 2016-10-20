//
//  CopacabanaViewController.swift
//  TuristandoOrio_Ote
//
//  Created by Oteniel on 9/29/16.
//  Copyright © 2016 Oteniel. All rights reserved.
//

import UIKit

class CopacabanaViewController:  UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var copaTable: UITableView!
    
    var bairros: NSArray?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let bundlePath = Bundle.main.path(forResource: "Copacabana", ofType: "plist"){
            if let dictionary = NSDictionary(contentsOfFile: bundlePath){
                
                bairros = dictionary["copacabana"] as? NSArray
                print(bairros?.count)
            }
        }
    }
    override func prepare(for next: UIStoryboardSegue, sender: Any?) {
        if next.identifier == "ligacao" {
            if let destination = next.destination as? LocalizacaoViewController {
                if let pontosIndex = (copaTable.indexPathForSelectedRow as NSIndexPath?)?.row {
                    destination.nomeAnt = bairros![pontosIndex] as? NSDictionary
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return(bairros?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "bairroRioCell", for: indexPath) as! RioGRioTableViewCell
        
        if let dic = bairros![(indexPath as NSIndexPath).row] as? NSDictionary{
            
            cell.lbNomeDoPonto.text = dic["nome"] as? String
            let imagemR: String = dic["imagem"] as! String
            cell.imagem.image = UIImage(named: imagemR)
            cell.lbDescricao.text = dic["descricao"] as? String
            cell.lbAvaliacao.text = dic["avaliacao"] as? String
            cell.lbTipoDePonto.text = dic["tipodeponto"] as? String
        }
        return cell
    }
    
}

