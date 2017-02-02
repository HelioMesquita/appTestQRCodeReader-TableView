//
//  Pedido.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import Foundation
import UIKit

class Pedido{
    
    var produtos = [Produto]()
    //var produto = Produto()
    
    var quantidades = [Int]()
    //var quantidade = Int()
    
    var contador:Int{
        return produtos.count
    }

    func adicionaProduto(produto:Produto){
        self.produtos.append(produto)
        self.quantidades.append(1)
    }
    
    //func carregaProduto(indice:Int){
    //    self.produto = self.produtos[indice]
    //    self.quantidade = self.quantidades[indice]
    //}
    
    func retornaProduto(indice:Int) -> (produtoEnvia:Produto,quantidadeEnvia:Int){
        return ((self.produtos[indice]), (self.quantidades[indice]))
   }
    
    func apagaProduto(indice:Int){
        self.produtos.remove(at: indice)
        self.quantidades.remove(at: indice)
    }
    
    
}
