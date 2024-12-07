//
//  PersonDetailViewController.swift
//  Contacts-app
//
//  Created by İbrahim Halil Kalkan on 16.11.2024.
//

import UIKit

class PersonDetailViewController: UIViewController {

    @IBOutlet weak var personNameLabel: UILabel!
    @IBOutlet weak var personNoLabel: UILabel!
    
    var contact:Contacts?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let c = contact {
            personNoLabel.text = c.number
            personNameLabel.text = c.name
            
        }


    }
    
  

}
