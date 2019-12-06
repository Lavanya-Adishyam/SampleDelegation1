//
//  ViewController.swift
//  SampleDelegation
//
//  Created by Lavanya on 05/12/19.
//  Copyright © 2019 Lavanya Akurathi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, colorChangeDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func colorChange(color:UIColor) {
        view.backgroundColor = color
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let ccvc = segue.destination as? ColorChangeViewController{
            ccvc.delegate = self
        }
    }

}

