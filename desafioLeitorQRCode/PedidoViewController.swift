//
//  PedidoViewController.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import UIKit

class PedidoViewController: UIViewController {
    
    let produto1 = Produto(codigoProduto: "01", codigoID: "01", descricao: "Panetone", preco: 10.0, quantidade: 3)
    let produto2 = Produto(codigoProduto: "02", codigoID: "02", descricao: "Cookie", preco: 3, quantidade: 1000)
    let produto3 = Produto(codigoProduto: "03", codigoID: "03", descricao: "Bolacha", preco: 4, quantidade: 100)
    let produto4 = Produto(codigoProduto: "04", codigoID: "04", descricao: "Brownie", preco: 2, quantidade: 1000)
    let produto5 = Produto(codigoProduto: "05", codigoID: "05", descricao: "Chocolate", preco: 2, quantidade: 1000)

    var pedido = Pedido()
    var cliente = Cliente()
    
    @IBOutlet weak var tabela: UITableView!
    
    @IBAction func voltar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabela.delegate = self
        tabela.dataSource = self

        pedido.adicionaProduto(produto: produto1)
        //pedido.adicionaProduto(produto: produto2)
        //pedido.adicionaProduto(produto: produto3)
        //pedido.adicionaProduto(produto: produto4)
        
    }


}
