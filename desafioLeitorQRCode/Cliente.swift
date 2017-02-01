//
//  Cliente.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import Foundation

class Cliente{
    
    var nome:String?
    var ddd:Int?
    var telefone:Double?
    var email:String?
    var cnpj:Double?
    var informacoesAdicionais:String?
    var desconto:Double?
    
    convenience init(nome:String,ddd:Int,telefone:Double,email:String,cnpj:Double,informacoesAdicionais:String) {
        self.init()
        self.nome = nome
        self.ddd = ddd
        self.telefone = telefone
        self.email = email
        self.cnpj = cnpj
        self.informacoesAdicionais = informacoesAdicionais
        self.desconto = 0.95 //5%
    }
    
}
