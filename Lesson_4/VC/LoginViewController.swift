//
//  LoginViewController.swift
//  Lesson_4
//
//  Created by Vova Kutsanov on 06.03.2020.
//  Copyright © 2020 Vova Kutsanov. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var olTextFieldLogin: UITextField!
    @IBOutlet weak var olTextFieldPw: UITextField!
    
    
    var user : User?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        user = User(login: "v", pw: "k", name: "Vova")
        
        olTextFieldLogin.delegate = self
        olTextFieldPw.delegate = self
    }
    
    @IBAction func actionModalLogin() {
        openModal(txt: "Используйте логин - \(String(describing: user!.login))")
    }
    
    @IBAction func actionModalPw() {
        openModal(txt: "Используйте пароль - \(String(describing: user!.pw))")
    }
    
    
    
    
    private func openModal(txt: String) {
        let alert = UIAlertController(title: "", message: txt, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        let id = textField.restorationIdentifier
        if (id == "fldLogin") {
            olTextFieldPw.becomeFirstResponder()
        }
        if (id == "fldPw") {
            performSegue(withIdentifier: "sequeLogin", sender: nil)
        }
        
        return true
    }
    
    
    @IBAction func unwindSegue(seque: UIStoryboardSegue) {
        olTextFieldLogin.text = ""
        olTextFieldPw.text = ""
    }
    
    
     // MARK: - Navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if olTextFieldLogin.text == "" {
            openModal(txt: "Введите логин")
            return
        }
        if olTextFieldPw.text == "" {
            openModal(txt: "Введите пароль")
            return
        }
        if olTextFieldLogin.text != user?.login || olTextFieldPw.text != user?.pw {
            openModal(txt: "Неправильный логин / пароль")
            return
        }
        
        let vcMain = (segue.destination as! UITabBarController).viewControllers?.first as! MainViewController
        vcMain.user = user
        
     }
    
}
