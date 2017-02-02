//
//  ExtensionPedidoViewController + Protocol.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import Foundation
import UIKit

extension PedidoViewController: AdicionaProdutosTabela{
    
    func adicionaProdutosDelegate(id: String) {
        print("Produto \(id)")
        
        func recebeID (produtoTeste:Produto){
            if self.pedido.produtos.contains(where: { (Produto) -> Bool in
                if Produto.codigoProduto == produtoTeste.codigoProduto{ return true } else { return false } }) == false{
                pedido.adicionaProduto(produto: produtoTeste)
                tabela.reloadData()
            } else{
                
                if produtoTeste.quantidade! > produtoTeste.quantidadeTravada!{
                    let adiciona = produtoTeste.quantidadeTravada! + 1
                    produtoTeste.quantidadeTravada = adiciona
                    
                    let remove = produtoTeste.quantidade! - 1
                    produtoTeste.quantidade = remove
                    
                    tabela.reloadData()
                }
            }
        }
        
        switch id {
            
            // esta funcao funciona verificando se ha algum produto com codigo igual
            // ele percorre o array de produtps e retorna true caso encontre
            // se nao tiver vai retornar falso
            // quando retorna falso entra no segundo if
            // na qual adiciona o produto na tabela
            
            // ## deve ser possivel melhora este tipo de funcao ##
            
            // ### funcao legado ###
            
            // if self.pedido.produtos.contains(where: { (Produto) -> Bool in
            //if Produto.codigoProduto == produto4.codigoProduto{ return true } else { return false } }) == false{
            //  pedido.adicionaProduto(produto: produto4)
            // tabela.reloadData()
            //} else{
            
            // if produto4.quantidade! > produto4.quantidadeTravada!{
            //let adiciona = produto4.quantidadeTravada! + 1
            //produto4.quantidadeTravada = adiciona
            
            // let remove = produto4.quantidade! - 1
            //produto4.quantidade = remove
            
            //tabela.reloadData()
            //}
            //}
            
        case "01":
            recebeID(produtoTeste: produto1)
            break
            
        case "02":
            recebeID(produtoTeste: produto2)
            break
            
        case "03":
            recebeID(produtoTeste: produto3)
            break
            
        case "04":
            recebeID(produtoTeste: produto4)
            break
            
        case "05":
            recebeID(produtoTeste: produto5)
            break
            
        default:
            break
        }
    }
}
