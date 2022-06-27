//
//  ViewController.swift
//  SuperSenha
//
//  Created by thales Aparecido Silva Carneiro on 23/06/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfTotalPasswords: UITextField!
    
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    
    @IBOutlet weak var swLetters: UISwitch!
    
    @IBOutlet weak var swNumbers: UISwitch!
    
    @IBOutlet weak var swCapitalLetters: UISwitch!
    
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewController = segue.destination as! PasswordsViewController
        if let numberOfPasswords = Int(tfTotalPasswords.text!){
            passwordsViewController.numberOfPasswords = numberOfPasswords
        }
        
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!){
            passwordsViewController.numberOfPasswords = numberOfCharacters
        }
        passwordsViewController.useLetters = swLetters.isOn
        passwordsViewController.useNumbers = swNumbers.isOn
        passwordsViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordsViewController.useSpecialCharacters = swCapitalLetters.isOn
        view.endEditing(true)
 
    }

}

