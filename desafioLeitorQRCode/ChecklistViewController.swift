//
//  ChecklistViewController.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import Foundation
import UIKit
import MessageUI


class ChecklistViewController: UIViewController, MFMailComposeViewControllerDelegate{
    
    @IBAction func sendEmail(_ sender: Any) {
        let mailComposeViewController = configuredMailComposeViewController()
        if MFMailComposeViewController.canSendMail() {
            self.present(mailComposeViewController, animated: true, completion: nil)
        } else {
            self.showSendMailErrorAlert()
        }
    }
    
    @IBOutlet weak var textoDescritivo: UITextView!
    @IBAction func editar(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    var resumoDoPedido:String?
    
    override func viewDidLoad() {
        colocaNoTextView(palavras: resumoDoPedido!)
    }
    
    func colocaNoTextView(palavras:String){
        textoDescritivo.text = palavras
    }
 


}
