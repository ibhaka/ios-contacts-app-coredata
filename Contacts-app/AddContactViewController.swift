//
//  AddContactViewController.swift
//  Contacts-app
//
//  Created by İbrahim Halil Kalkan on 15.11.2024.
//

import UIKit

class AddContactViewController: UIViewController {

    let context = appDelegate.persistentContainer.viewContext
    
    @IBOutlet weak var personNameTextfield: UITextField!
    @IBOutlet weak var phoneNoTextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func add(_ sender: Any) {
        
        if let name = personNameTextfield.text, let number = phoneNoTextfield.text{
            
            let person = Contacts(context: context)
            
            
                
            person.name = name
            person.number = number
            
            appDelegate.saveContext()
        }
    }
    

}
