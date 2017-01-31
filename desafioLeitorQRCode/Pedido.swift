//
//  Pedido.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import Foundation

class Pedido{
    
    var produtos:[Produto]?
    
    var contador:Int{
        if let quantidade = produtos?.count{
            return quantidade
        } else{
            return 0
        }
    }


    convenience init(produto:[Produto]){
        self.init()
        self.produtos = produto
    }


}
