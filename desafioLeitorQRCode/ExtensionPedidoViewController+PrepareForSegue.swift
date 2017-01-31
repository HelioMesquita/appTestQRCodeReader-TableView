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
                
                var pedido:String = ""
                
                for i in 0...produtos.count-1{
                    pedido += "\(produtos[i].produtoCompleto) \n"
                }
                nextViewController.pedidoMemorando = pedido
            }
        }
        
        
    }

    
    
    
    
    
    
}
