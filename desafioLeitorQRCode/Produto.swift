//
//  Produto.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import Foundation

class Produto{
    
    var codigoProduto:String?
    var codigoID:String?
    var descricao:String?
    var preco:Double?
    var quantidade:Int?
    
    convenience init(codigoProduto:String,codigoID:String,descricao:String,preco:Double,quantidade:Int) {
       self.init()
        self.codigoProduto = codigoProduto
        self.codigoID = codigoID
        self.descricao = descricao
        self.preco = preco
        self.quantidade = quantidade
    }
    
}
