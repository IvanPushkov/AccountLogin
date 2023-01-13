//
//  ViewController.swift
//  AccountLogin
//
//  Created by Ivan Pushkov on 06.12.2022.
//

import UIKit

class SacondViewController: UIViewController {
    
@IBOutlet weak var textLabel: UILabel!
    
    
    override func viewDidLoad() {
       
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    
    }
    let avengers: [String] = [ "Tor", "Halk", "Spider Man", " Iron man"]
    func checkButton() {
        let avenger = avengers.randomElement()
        textLabel.text = avenger
    }
    
    @IBAction func check(_ sender: Any) {
        checkButton()
    }
   
    
}

