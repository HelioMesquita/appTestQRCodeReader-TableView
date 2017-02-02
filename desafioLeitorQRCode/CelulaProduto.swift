//
//  CelulaProduto.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import UIKit

class CelulaProduto: UITableViewCell {
    
    var quantidadeDoProduto:Int = 1
    var produto:Produto?
    
    @IBOutlet weak var descricao: UILabel!
    @IBOutlet weak var quantidade: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    
    
    @IBAction func adicionaOuRemove(_ sender: UIStepper) {
        
        if (produto?.quantidade)! > (produto?.quantidadeTravada)!{
            
            if sender.value > 0 {
                
                self.quantidadeDoProduto = (produto?.quantidadeTravada)! + 1
                self.produto?.quantidadeTravada = quantidadeDoProduto
                
                self.quantidade.text = String((self.produto?.quantidadeTravada)!)
                
                stepper.value = 0
                //print(stepperValor)
            } else{
                
                
                self.quantidadeDoProduto = (produto?.quantidadeTravada)! - 1
                self.produto?.quantidadeTravada = quantidadeDoProduto
                
                self.quantidade.text = String((self.produto?.quantidadeTravada)!)
                
                stepper.value = 0
                //print(stepperValor)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        stepper.value = 0
        stepper.minimumValue = -1
        stepper.maximumValue = 1
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func recebeProduto(produto:Produto,quantidade:Int){
        self.produto = produto
        self.quantidadeDoProduto = quantidade
        
        self.descricao.text = produto.descricao
        
        self.quantidade.text = String((self.produto?.quantidadeTravada)!)
        
        
    }
    
    
}
