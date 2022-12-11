//
//  SecondViewController.swift
//  SecondViewController
//
//  Created by Roman Kiruxin on 25.01.2022.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //cancel
    @IBAction func exitViewController(_ sender: Any) {
        dismiss(animated: true)
    }
    
    func printA() {
        print("A")
    }
}
