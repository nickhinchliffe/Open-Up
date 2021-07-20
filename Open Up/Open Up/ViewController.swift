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
    @IBOutlet weak var wifiBtn: UIButton!
    @IBOutlet weak var bluetoothBtn: UIButton!
    @IBOutlet weak var lastActionField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func switchButtonOnClick(_ sender: Any) {
        if switchBtn.currentTitle == "Unlocked" {
            AF.request("http:/10.0.0.124:5000/").response { response in
                debugPrint(response)
            }
            print("Switching to Locked")
            switchBtn.setTitle("Locked", for: .normal)
            switchBtn.setTitleColor(.green, for: .normal)
            lastActionField.text = "Locked @"
        }
        else{
            AF.request("http:/10.0.0.124:5000/").response { response in
                debugPrint(response)
            }
            print("Switching to Unlocked")
            switchBtn.setTitle("Unlocked", for: .normal)
            switchBtn.setTitleColor(.red, for: .normal)
            lastActionField.text = "Unlocked @"
        }
    }
    
    @IBAction func wifiBtnOnClick(_ sender: Any) {
        print("Wifi Button Clicked")
    }
    
    @IBAction func bluetoothBtnOnClick(_ sender: Any) {
        print("BT Button Clicked")
    }
    
}

