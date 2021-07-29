//
//  TaskListTableViewController.swift
//  TaskCoreData
//
//  Created by Kyle Franklin on 7/27/21.
//

import UIKit

class TaskListTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    
        
        TaskController.shared.fetchTasks()
      
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        tableView.reloadData()
    }
   
  }
    


