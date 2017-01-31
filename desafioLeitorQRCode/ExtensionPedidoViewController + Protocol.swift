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
            
            switch id {
                
            case "01":
                
                if self.produtos.contains(where: { (Produto) -> Bool in
                    if Produto.codigoProduto == produto1.codigoProduto{
                        return true
                        // se sim nao adiciona no if que esta em baixo
                    } else {
                        
                        return false
                    }
                }) == false{
                    self.produtos.append(self.produto1)
                    tabela.reloadData()
                }
                
                break
            case "02":
                if self.produtos.contains(where: { (Produto) -> Bool in
                    if Produto.codigoProduto == produto2.codigoProduto{
                        return true
                        // se sim nao adiciona no if que esta em baixo
                    } else {
                        
                        return false
                    }
                }) == false{
                    self.produtos.append(self.produto2)
                    tabela.reloadData()
                }
                break
                
                
            case "03":
                if self.produtos.contains(where: { (Produto) -> Bool in
                    if Produto.codigoProduto == produto3.codigoProduto{
                        return true
                        // se sim nao adiciona no if que esta em baixo
                    } else {
                        
                        return false
                    }
                }) == false{
                    self.produtos.append(self.produto3)
                    tabela.reloadData()
                }
                break
            case "04":
                
                // esta funcao funciona verificando se ha algum produto com codigo igual
                // ele percorre o array de produtps e retorna true caso encontre
                // se nao tiver vai retornar falso
                // quando retorna falso entra no segundo if
                // na qual adiciona o produto na tabela
                
                // ## deve ser possivel melhora este tipo de funcao ##
                
                if self.produtos.contains(where: { (Produto) -> Bool in
                    if Produto.codigoProduto == produto4.codigoProduto{
                        return true
                        // se sim nao adiciona no if que esta em baixo
                    } else {
                        
                        return false
                    }
                }) == false{
                    self.produtos.append(self.produto4)
                    tabela.reloadData()
                }
                
                break
            default:
                break
            }
            
            
            
        }
        

}
