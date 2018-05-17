//
//  ViewController.swift
//  Todoey
//
//  Created by Simon Neufville on 17/04/2018.
//  Copyright © 2018 XRSCodeworks. All rights reserved.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Do something cool", "Be someone cool", "Drop it like its hot"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        
//        if (!tableCell) {
//             tableCell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "TodoItemCell")
//        }
        
        tableCell.textLabel?.text = itemArray[indexPath.row]
        
        return tableCell;
    }

}

// MARK - Additional methods

extension TodoListViewController {
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Selected row: \(indexPath.row) with Value: \(itemArray[indexPath.row])")
        
        let tableCell = tableView.cellForRow(at: indexPath)
        
        if tableCell?.accessoryType == .checkmark {
            tableCell?.accessoryType = .none
        } else {
            tableCell?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
