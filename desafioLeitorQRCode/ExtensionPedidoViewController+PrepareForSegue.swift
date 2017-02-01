//
//  ExtensionPedidoViewController+PrepareForSegue.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import Foundation
import UIKit


extension PedidoViewController{
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "vaiParaOScanner"{
            if let nextViewController = segue.destination as? QRScannerController{
                nextViewController.delegate = self
            }
        }
        
        if segue.identifier == "ChecklistPedido"{
            if let nextViewController = segue.destination as? ChecklistViewController{
                nextViewController.cliente = cliente
                
                var texto:String = ""
                texto += "\(cliente.nome!) \(cliente.ddd!)\(cliente.telefone!)\n\(cliente.email!)\n\(cliente.informacoesAdicionais!)"
                
                for i in 0...self.pedido.contador-1 {
                    texto += "Item: \(pedido.produtos[i].descricao!) - Quantidade: \(pedido.produtos[i].quantidadeTravada!)\n"
                }
                
                nextViewController.resumoDoPedido = texto
            }
        }
        
        
}

    
    
    
    
    
    
}
