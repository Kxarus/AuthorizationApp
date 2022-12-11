//
//  ViewController.swift
//  AuthorizationApp
//
//  Created by Roman Kiruxin on 23.01.2022.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var TFLogin: UITextField!
    @IBOutlet weak var TFPassword: UITextField!
    
    @IBOutlet weak var buttonLogin: UIButton!
    @IBOutlet weak var buttonPassword: UIButton!
    
    var dataArray = Authorization.getLoginAndPassword()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func showAlertForgot(_ sender: UIButton){
        
        let acLogin = UIAlertController(title: "Забыли логин?", message: "Ваш логин - admin", preferredStyle: .alert)
        let acPassword = UIAlertController(title: "Забыли пароль?", message: "Ваш пароль - 123", preferredStyle: .alert)
        
        let cancel = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        acLogin.addAction(cancel)
        acPassword.addAction(cancel)
        
        switch sender {
        case buttonLogin:
            present(acLogin, animated: true, completion: nil)
        case buttonPassword:
            present(acPassword, animated: true, completion: nil)
        default:
            break
        }
    }
    
    func clearingTFS(){
        TFLogin.text = nil
        TFPassword.text = nil
    }

    @IBAction func buttonLogIn() {
        
        for data in dataArray {
            if data.login == TFLogin.text && data.password == TFPassword.text {
                performSegue(withIdentifier: "secondVCSegue", sender: nil)
                clearingTFS()
            } else {
                let acError = UIAlertController(title: "Ошибка", message: "Вы ввели не правильные логин или пароль. Попробуйте еще раз!", preferredStyle: .actionSheet)
                let cancel = UIAlertAction(title: "OK", style: .cancel)
                
                acError.addAction(cancel)
                present(acError, animated: true)
                
                clearingTFS()
            }
        }
    }
    
    @IBAction func buttonForgotLogin(_ sender: UIButton) {
        showAlertForgot(sender)
    }
    
    @IBAction func buttonForgotPassword(_ sender: UIButton) {
        showAlertForgot(sender)
    }
    
    @IBAction func unwindMainScreen(for segue: UIStoryboardSegue) {
        clearingTFS()
    }
}

extension MainViewController: UITextFieldDelegate {
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

