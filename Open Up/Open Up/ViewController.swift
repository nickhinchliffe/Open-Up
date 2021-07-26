//
//  ViewController.swift
//  Open Up
//
//  Created by Nick Hinchliffw on 6/24/21.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var switchBtn: UIButton!
    @IBOutlet weak var lastActionField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func switchButtonOnClick(_ sender: Any) {
        let now = Date()

        let formatter = DateFormatter()
        formatter.timeStyle = .short
        
        let datetime = formatter.string(from: now)
        
        if switchBtn.currentTitle == "Unlocked" {
            AF.request("http://10.0.0.204:5000/lock").response { response in
                debugPrint(response)
            }
            print("Switching to Locked")
            switchBtn.setTitle("Locked", for: .normal)
            switchBtn.setTitleColor(.green, for: .normal)
            lastActionField.text = "Last locked at " + datetime
        }
        else{
            AF.request("http://10.0.0.204:5000/unlock").response { response in
                debugPrint(response)
            }
            print("Switching to Unlocked")
            switchBtn.setTitle("Unlocked", for: .normal)
            switchBtn.setTitleColor(.red, for: .normal)
            lastActionField.text = "Last unlocked at " + datetime
        }
    }
    
    
}

