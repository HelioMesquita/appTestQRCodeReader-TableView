//
//  CelulaProduto.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import UIKit

class CelulaProduto: UITableViewCell {

    @IBOutlet weak var descricao: UILabel!
    @IBOutlet weak var quantidade: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    
    @IBAction func adicionaOuRemove(_ sender: UIStepper) {
        
        print(sender.value)
        self.quantidade.text = String(format: "%.0f", sender.value)
        
    }
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        stepper.value = 1
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
