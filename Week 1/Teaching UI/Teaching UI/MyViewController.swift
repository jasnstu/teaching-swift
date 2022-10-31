//
//  MyViewController.swift
//  Teaching UI
//
//  Created by Jason Stuemke on 10/26/22.
//

import UIKit

class MyViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
//    @IBOutlet weak var button: UIButton!

    @IBAction func buttonTapped(_ button: UIButton) {
        let string = label.text ?? ""

        label.text = "\(string)+" //"+"
    }



}
