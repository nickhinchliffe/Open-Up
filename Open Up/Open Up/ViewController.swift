//
//  ViewController.swift
//  Open Up
//
//  Created by Nick Hinchliffw on 6/24/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var switchBtn: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchButtonOnClick(_ sender: Any) {
        if switchBtn.currentTitle == "Unlocked" {
            print("Switching to Locked")
            switchBtn.setTitle("Locked", for: .normal)
            switchBtn.setTitleColor(.green, for: .normal)
        }
        else{
            print("Switching to Unlocked")
            switchBtn.setTitle("Unlocked", for: .normal)
            switchBtn.setTitleColor(.red, for: .normal)
        }
    }
    
}

