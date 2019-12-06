//
//  ColorChangeViewController.swift
//  SampleDelegation
//
//  Created by Lavanya on 05/12/19.
//  Copyright © 2019 Lavanya Akurathi. All rights reserved.
//

import Foundation
import UIKit

protocol colorChangeDelegate{
    func colorChange(color:UIColor)
}

class ColorChangeViewController: UIViewController {
    
    var delegate : colorChangeDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonClick(_ sender: Any) {

        if let clickedButton = sender as? UIButton{
            switch clickedButton.tag{
            case 101:
                print("red")
                delegate.colorChange(color: .red)
            default:
                print("green")
                delegate.colorChange(color: .green)

            }
        }
    navigationController?.popViewController(animated: true)
    }

}
