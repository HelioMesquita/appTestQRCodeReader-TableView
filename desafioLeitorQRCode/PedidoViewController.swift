//
//  PedidoViewController.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import UIKit

class PedidoViewController: UIViewController {

    
    var produtos = [Produto]()
    var pedido:Pedido?
    
    let produto1 = Produto(codigoProduto: "01", codigoID: "01", descricao: "Panetone", preco: 10.0, quantidade: 100)
    let produto2 = Produto(codigoProduto: "02", codigoID: "02", descricao: "Cookie", preco: 3, quantidade: 1000)
    let produto3 = Produto(codigoProduto: "03", codigoID: "03", descricao: "Bolacha", preco: 4, quantidade: 100)
    let produto4 = Produto(codigoProduto: "04", codigoID: "04", descricao: "Brownie", preco: 2, quantidade: 1000)
    
    
    
    
    @IBOutlet weak var tabela: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabela.delegate = self
        tabela.dataSource = self
        
        produtos.append(produto1)
        produtos.append(produto2)
        produtos.append(produto3)
        produtos.append(produto4)
        
        var pedidoInicializado = Pedido(produto: produtos)
        pedido = pedidoInicializado
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "vaiParaOScanner"{
            if let nextVC = segue.destination as? QRScannerController{
                nextVC.delegate = self
            }
        }
    }


}


extension PedidoViewController: AdicionaProdutosTabela{
    func adicionaProdutosDelegate(id: String) {
        print("Produto \(id)")
        
        switch id {
        case "01":
            self.produtos.append(self.produto1)
            tabela.reloadData()
            break
        case "02":
            self.produtos.append(self.produto2)
            tabela.reloadData()
            break
        case "03":
            self.produtos.append(self.produto3)
            tabela.reloadData()
            break
        case "04":
            self.produtos.append(self.produto4)
            tabela.reloadData()
            break
        default:
            break
        }
        
        
        
    }
    
}
