//
//  UpdateContactViewController.swift
//  Contacts-app
//
//  Created by İbrahim Halil Kalkan on 16.11.2024.
//

import UIKit

class UpdateContactViewController: UIViewController {

    @IBOutlet weak var personNameTextfield: UITextField!
    @IBOutlet weak var personNoTextfield: UITextField!
    
    var contact: Contacts?
    let context = appDelegate.persistentContainer.viewContext

    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let c = contact {
            
            personNameTextfield.text = c.name
            personNoTextfield.text = c.number
            
        }

    }
    

    @IBAction func update(_ sender: Any) {
        
        if let c = contact, let name = personNameTextfield.text, let number = personNoTextfield.text{
                        
            c.name = name
            c.number = number
            
            appDelegate.saveContext()
            
        }
       
       
    }
    

}
