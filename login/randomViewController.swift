//
//  RandomViewController.swift
//  login
//
//  Created by Sabbir on 12/26/19.
//  Copyright © 2019 Sabbir. All rights reserved.
//

import UIKit

class RandomViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    //Code for random code generate
    @IBAction func randomnumber(_ sender: Any) {
        
        let randomnumber = Int.random(in:1000...10000)
        label.text=String(randomnumber)
    }
    
   //data passsing segue
    
     @IBAction func done(_ sender: Any) {
        
            if textField.text != ""
            {
                performSegue(withIdentifier: "segue", sender:self)
            }
        
 }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let signupViewController  = segue.destination as! signupViewController
        signupViewController.myString = textField.text!
        
    }
    
}
    

