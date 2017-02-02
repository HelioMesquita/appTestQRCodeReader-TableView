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
    // caso o email nao esteja configurado
    func configuredMailComposeViewController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self // Extremely important to set the --mailComposeDelegate-- property, NOT the --delegate-- property
        
        mailComposerVC.setToRecipients(["oorcamento@homeon.com.br;"])
        mailComposerVC.setSubject("Lista de Compras")
        mailComposerVC.setMessageBody("<b>Sending e-mail in-app is not so bad!</b>", isHTML: true)
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
