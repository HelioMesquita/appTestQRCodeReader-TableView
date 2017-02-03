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
    
    
    var stepperInicial:Double = 1
    @IBAction func adicionaOuRemove(_ sender: UIStepper) {
        //print(sender.value)
        
        if sender.value > stepperInicial{
            //print("botao +")
            
            let adiciona = (self.produto?.quantidadeTravada)! + 1
            self.produto?.quantidadeTravada = adiciona
            
            self.quantidade.text = String((self.produto?.quantidadeTravada)!)
            
            stepperInicial += 1
            
        } else if sender.value <= -1{
            sender.value = 0
        } else{
            //print("botao -")
            
            let subtrai = (self.produto?.quantidadeTravada)! - 1
            self.produto?.quantidadeTravada = subtrai
            
            self.quantidade.text = String((self.produto?.quantidadeTravada)!)
            stepperInicial -= 1
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        stepper.minimumValue = -1000
        stepperInicial = stepper.value
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    func recebeProduto(produto:Produto,quantidadeEscolhida:Int){
        self.produto = produto
        
        stepper.value = Double(produto.quantidadeTravada!)
        stepper.maximumValue = Double(produto.quantidade!)
        
        self.descricao.text = produto.descricao
        
        self.quantidade.text = String(produto.quantidadeTravada!)
        
        
    }
    
    
}
