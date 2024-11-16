//
//  ViewController.swift
//  Contacts-app
//
//  Created by İbrahim Halil Kalkan on 15.11.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var contactTableView: UITableView!
    
    var list = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        list = ["Jack", "Paul", "Lars", "Kirk", "Steve"];

        contactTableView.delegate = self
        contactTableView.dataSource = self
        
        searchBar.delegate = self

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toDetail"{
            
        }
        if segue.identifier == "toUpdate"{
            
        }


    }


}

extension ViewController:UITableViewDelegate,UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath) as! ContactCellTableViewCell
        
        cell.personTextLabel.text = list[indexPath.row]
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "toDetail", sender: indexPath.row)
    }
    
    
    /*
     
     //old code
     
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete", handler: {(action:UITableViewRowAction, indexPath:IndexPath) -> Void in
            
            print("Delete clicked for \(self.list[indexPath.row])")
            
            
            
        })
        let updateAction = UITableViewRowAction(style: .normal, title: "Update", handler: {(action:UITableViewRowAction, indexPath:IndexPath) -> Void in
            
            print("Update clicked for \(self.list[indexPath.row])")
            
            self.performSegue(withIdentifier: "toUpdate", sender: indexPath.row)
            
            
        })
        
        return [deleteAction, updateAction]
        
    }
    */
    
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        
        let deleteAction = UIContextualAction(style: .destructive, title: "delete") {
            (contextialAction, view, boolValue) in
            
            print("Delete clicked for \(self.list[indexPath.row])")

        }
        
        let updateAction = UIContextualAction(style: .normal, title: "update") {
            (contextialAction, view, boolValue) in
            
            print("Delete clicked for \(self.list[indexPath.row])")
            self.performSegue(withIdentifier: "toUpdate", sender: indexPath.row)


        }
        
        return UISwipeActionsConfiguration(actions: [deleteAction,updateAction])
        
    }

}
extension ViewController:UISearchBarDelegate{
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Search: \(searchText)")
    }
    
}

