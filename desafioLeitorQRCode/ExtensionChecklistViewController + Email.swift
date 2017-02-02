//
//  ExtensionChecklistViewController + Email.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 01/02/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import Foundation
import UIKit
import MessageUI

extension ChecklistViewController{

    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
    
        mailComposerVC.mailComposeDelegate = self
        
        mailComposerVC.setToRecipients(["mesquitahelio@hotmail.com"])
        
        mailComposerVC.setSubject("Lista de Compras")
        
        mailComposerVC.setMessageBody("<b>Sending e-mail in-app is not so bad!</b>", isHTML: true)
        
        // trabalhar o texto a ser enviado
        let text = "some text\n\n\n\nTestando" //just a text
        let data = text.data(using: String.Encoding.utf8)
        
        mailComposerVC.addAttachmentData(data!, mimeType: "text/plain", fileName: "Arquivo")
        
       
        
        return mailComposerVC
    }
    
    // caso o email esteja configurado
    func showSendMailErrorAlert() {
        let alertController = UIAlertController(title: "Não foi possivel enviar o e-mail", message: "Por favor, configure o seu mail para realizar esta operação.", preferredStyle: .alert)
        
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(defaultAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    // MARK: MFMailComposeViewControllerDelegate Method
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }
}
