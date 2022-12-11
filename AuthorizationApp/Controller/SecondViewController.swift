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
    
    func printQWER() {
        print("QWER")
    }
    
    func printQWER2() {
        print("QWER2")
    }
    
    func printQWER10() {
        print("QWER10")

    func printQWER3() {
        print("QWER3")
        print("QWER2")
        print(4)
        print(10)
    }
}
