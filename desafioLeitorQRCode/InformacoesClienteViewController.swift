//
//  InformacoesClienteViewController.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import UIKit

class InformacoesClienteViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var nomeCampo: UITextField!
    @IBOutlet var dddCampo: UITextField!
    @IBOutlet var telefoneCampo: UITextField!
    @IBOutlet var emailCampo: UITextField!
    @IBOutlet var cnpjCampo: UITextField!
    @IBOutlet var inforAdCampo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        delegateTextField()
    }
    
    @IBAction func proximaTela(_ sender: Any) {
        if (nomeCampo.text?.isEmpty)! && (dddCampo.text?.isEmpty)! && (telefoneCampo.text?.isEmpty)! && (emailCampo.text?.isEmpty)! && (cnpjCampo.text?.isEmpty)! {
            
            let alertController = UIAlertController(title: "Esta faltando informações", message: "Preencha os campos que estão em branco", preferredStyle: .alert)
            
            let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertController.addAction(defaultAction)
            
            present(alertController, animated: true, completion: nil)
            
        }else{
            var cliente = Cliente(nome: nomeCampo.text!, ddd: Int(dddCampo.text!)!, telefone: Double(telefoneCampo.text!)!, email: emailCampo.text!, cnpj: Double(cnpjCampo.text!)!, informacoesAdicionais: "")

            performSegue(withIdentifier: "PedidoViewController", sender: cliente)
        }
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        (nomeCampo.text?.isEmpty)! ? nomeCampo.becomeFirstResponder(): dddCampo.becomeFirstResponder()
        (dddCampo.text?.isEmpty)! ? dddCampo.becomeFirstResponder(): telefoneCampo.becomeFirstResponder()
        (telefoneCampo.text?.isEmpty)! ? telefoneCampo.becomeFirstResponder(): emailCampo.becomeFirstResponder()
        (emailCampo.text?.isEmpty)! ? emailCampo.becomeFirstResponder(): cnpjCampo.becomeFirstResponder()
        (cnpjCampo.text?.isEmpty)! ? cnpjCampo.becomeFirstResponder(): inforAdCampo.becomeFirstResponder()
        
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PedidoViewController"{
            if let nextViewController = segue.destination as? PedidoViewController{
                nextViewController.cliente = sender as! Cliente
            }
        }
    }
    
}
