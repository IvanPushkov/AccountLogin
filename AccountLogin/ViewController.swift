//
//  ViewController.swift
//  AccountLogin
//
//  Created by Ivan Pushkov on 06.12.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var passeword: UITextField!
    @IBOutlet weak var logInButton: UIButton!
//    @IBOutlet weak var infoLabel: UILabel!
    
   
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        infoLabel.text = "l"
//        infoLabel.isHidden = true
//
        
        passeword.delegate = self
        userName.delegate = self
        passeword.keyboardType = .phonePad
        
    }
   
    
    
//    func showLabel (with massage: String) {
//        infoLabel.alpha = 1
//        infoLabel.isHidden = false
//        infoLabel.text = massage
//        UIView.animate(withDuration: 5, animations:{ () -> Void in self.infoLabel.alpha = 0
//                       })
//    }
    
    
    @IBAction func logInButtonAction(_ sender: Any) {
        if passeword.text == "0000" && userName.text == "Admin" {
            performSegue(withIdentifier: "goVC", sender: nil)
            passeword.text = " "
            userName.text = " "
        }
       else if passeword.text == "0000" && userName.text != "Admin"
        { let firstAlert = UIAlertController(title: "Внимание", message: "Неправильный пароль!", preferredStyle: .alert)
            let okBtn = UIAlertAction(title: "Ok", style: .default)
            firstAlert.addAction(okBtn)
            present(firstAlert, animated: true)
        }
        
          else  if passeword.text != "0000" && userName.text == "Admin"
        { let sacondAlert = UIAlertController(title: "Внимание", message: "Неправильный пароль!", preferredStyle: .alert)
                let okBtn = UIAlertAction(title: "Ok", style: .default)
                sacondAlert.addAction(okBtn)
                
                present(sacondAlert, animated: true)
            }
        
       else if passeword.text != "0000" && userName.text != "Admin"
        { let thirdAlert = UIAlertController(title: "Внимание", message: " Неправильный пароль и логин", preferredStyle: .alert)
            let okBtn = UIAlertAction(title: "Ok", style: .default)
            thirdAlert.addAction(okBtn)
            
            present(thirdAlert, animated: true)
            
        }
    }
    
    
    
}
    

extension ViewController: UITextFieldDelegate {
    
}


