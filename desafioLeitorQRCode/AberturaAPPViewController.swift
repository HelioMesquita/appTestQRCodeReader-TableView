//
//  AberturaAPPViewController.swift
//  desafioLeitorQRCode
//
//  Created by Hélio Mesquita on 31/01/17.
//  Copyright © 2017 Hélio Mesquita. All rights reserved.
//

import UIKit

class AberturaAPPViewController: UIViewController {

    @IBOutlet var botao: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        botao.layer.cornerRadius = 27
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

