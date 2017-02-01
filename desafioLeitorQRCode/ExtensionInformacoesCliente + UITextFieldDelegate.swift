//
//  ExtensionInformacoesCliente + UITextFieldDelegate.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import Foundation

extension InformacoesClienteViewController{

    func delegateTextField(){
        nomeCampo.delegate = self
        dddCampo.delegate = self
        telefoneCampo.delegate = self
        emailCampo.delegate = self
        cnpjCampo.delegate = self
    }

}
