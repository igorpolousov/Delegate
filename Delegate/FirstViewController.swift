//
//  ViewController.swift
//  Delegate
//
//  Created by Igor Polousov on 09.12.2021.
//

import UIKit

// STEP_4
class FirstViewController: UIViewController, MyDataSendingDelegateProtocol {
    
    @IBOutlet var receivedDataLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // STEP_5
    func sendDataToFirstViewController(_ myData: String) {
        self.receivedDataLabel.text = myData
    }

    // STEP_6
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "getDataSegue" {
            let secondVC: SecondViewController = segue.destination as! SecondViewController
            secondVC.delegate = self
        }
    }

}

