//
//  ExtensionPedido+DataSource+Delegate.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import Foundation
import UIKit

    extension PedidoViewController: UITableViewDataSource,UITableViewDelegate{
    
        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return self.pedido!.contador
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "CelulaProduto", for: indexPath) as! CelulaProduto
            
            cell.descricao.text = self.pedido?.produtos?[indexPath.row].descricao
            
            return cell
        }
    
//      func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
//           return true
//      }
        
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
                self.pedido?.produtos?.remove(at: indexPath.row)
                tableView.deleteRows(at: [indexPath], with: .top)
            } else if editingStyle == .insert {
                // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view.
            }
        }
        
}
