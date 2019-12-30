//
//  signupViewController.swift
//  login
//
//  Created by Sabbir on 12/25/19.
//  Copyright © 2019 Sabbir. All rights reserved.
//

import UIKit

class signupViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    var myString = String ()
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var pwdTextField: UITextField!
    
    @IBOutlet weak var telTextField: UITextField!
    
    @IBOutlet weak var blogTextField: UITextField!
    
  
    @IBOutlet weak var outputTextView: UITextView!
    
    //@IBOutlet weak var nameTextField: UITextField!
    //@IBOutlet weak var emailTextField: UITextField!
    //@IBOutlet weak var pwdTextField: UITextField!
    //@IBOutlet weak var telTextField: UITextField!
    //@IBOutlet weak var blogTextField: UITextField!
    //@IBOutlet weak var outputTextView: UITextView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        print("Printing myString")
        print (myString)
       label.text = myString
    
        
        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //show value
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func isValidEmail(testStr: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: testStr)
    }
    
    @IBAction func signupAction(_ sender: Any) {
        outputTextView.text = "Welcome Mr. \(nameTextField.text!) \n \(emailTextField.text!) \n \(pwdTextField.text!) \n \(telTextField.text!) \n \(blogTextField.text!)!"
        
    }

}
