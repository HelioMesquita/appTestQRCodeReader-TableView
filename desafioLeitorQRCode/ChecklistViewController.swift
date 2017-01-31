//
//  ChecklistViewController.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import Foundation
import UIKit


class ChecklistViewController: UIViewController{
    
    @IBOutlet weak var textoDescritivo: UITextView!
    @IBAction func editar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var pedidoMemorando:String?
    
    
    override func viewDidLoad() {
        colocaNoTextView(palavras: pedidoMemorando!)
        
    }
    
    
    func colocaNoTextView(palavras:String){
        textoDescritivo.text = palavras
    }
    
    
    
    
    
    
}
