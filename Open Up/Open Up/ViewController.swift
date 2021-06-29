//
//  ViewController.swift
//  Open Up
//
//  Created by Nick Hinchliffw on 6/24/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var switchBtn: UIButton!
    @IBOutlet weak var wifiBtn: UIButton!
    @IBOutlet weak var bluetoothBtn: UIButton!
    @IBOutlet weak var lastActionField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchButtonOnClick(_ sender: Any) {
        if switchBtn.currentTitle == "Unlocked" {
            print("Switching to Locked")
            switchBtn.setTitle("Locked", for: .normal)
            switchBtn.setTitleColor(.green, for: .normal)
            lastActionField.text = "Locked @"
        }
        else{
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

