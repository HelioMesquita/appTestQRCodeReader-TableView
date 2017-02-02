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
    
    
    var stepperValor:Double = 1
    
    @IBAction func adicionaOuRemove(_ sender: UIStepper) {
        
        if (produto?.quantidade)! > (produto?.quantidadeTravada)!{
            
            if sender.value > stepperValor {
                stepperValor += 1
                self.quantidadeDoProduto = (produto?.quantidadeTravada)! + 1
                self.produto?.quantidadeTravada = quantidadeDoProduto
                
                self.quantidade.text = String((self.produto?.quantidadeTravada)!)
                
                //print(stepperValor)
            } else{
                stepperValor -= 1
                self.quantidadeDoProduto = (produto?.quantidadeTravada)! - 1
                self.produto?.quantidadeTravada = quantidadeDoProduto
                
                self.quantidade.text = String((self.produto?.quantidadeTravada)!)
                //print(stepperValor)
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        stepper.value = 1
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
