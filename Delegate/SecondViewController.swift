//
//  SecondViewController.swift
//  Delegate
//
//  Created by Igor Polousov on 09.12.2021.
//

import UIKit


// STEP_1
protocol MyDataSendingDelegateProtocol {
    func sendDataToFirstViewController(_ myData: String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet var dataToSendTextField: UITextField!
    
    // STEP_2
    var delegate: MyDataSendingDelegateProtocol?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func sendDataButtonClicked(_ sender: Any) {
        if self.delegate != nil && self.dataToSendTextField.text != nil {
            let dataToBeSend = self.dataToSendTextField.text
            
            // STEP_3
            self.delegate?.sendDataToFirstViewController(dataToBeSend ?? "Oops")
            dismiss(animated: true, completion: nil)
        }
        
    }

}
