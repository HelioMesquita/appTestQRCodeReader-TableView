//
//  CelulaProduto.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import UIKit

class CelulaProduto: UITableViewCell {

    var produto:Produto?
    
    @IBOutlet weak var descricao: UILabel!
    @IBOutlet weak var quantidade: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func adicionaOuRemove(_ sender: UIStepper) {
        print(sender.value)
        if Double((produto?.quantidade)!) < sender.value{
            sender.value = Double((produto?.quantidade)!)
        } else{
            self.quantidade.text = String(format: "%.0f", sender.value)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        stepper.value = 1
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func recebeProduto(produto:Produto){
            descricao.text = produto.descricao
            self.produto = produto
    }
    

}
