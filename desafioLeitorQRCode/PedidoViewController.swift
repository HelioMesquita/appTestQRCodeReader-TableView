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
    var pedido = Pedido()
    
    
    @IBOutlet weak var tabela: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabela.delegate = self
        tabela.dataSource = self
        
        let produto1 = Produto(codigoProduto: "01", codigoID: "01", descricao: "Panetone", preco: 10.0, quantidade: 100)
        let produto2 = Produto(codigoProduto: "02", codigoID: "02", descricao: "Cookie", preco: 3, quantidade: 1000)
        let produto3 = Produto(codigoProduto: "03", codigoID: "03", descricao: "Bolacha", preco: 4, quantidade: 100)
        let produto4 = Produto(codigoProduto: "04", codigoID: "04", descricao: "Brownie", preco: 2, quantidade: 1000)
        
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
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
