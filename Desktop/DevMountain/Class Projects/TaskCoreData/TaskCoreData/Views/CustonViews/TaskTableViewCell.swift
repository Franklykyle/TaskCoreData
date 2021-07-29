//
//  TaskTableViewCell.swift
//  TaskCoreData
//
//  Created by Kyle Franklin on 7/28/21.
//

import UIKit



class TaskTableViewCell: UITableViewCell {

    
    //MARK: - OUTLETS
    @IBOutlet weak var taskNameLabel: UILabel!
    @IBOutlet weak var completionButton: UIButton!
    
    //MARK: - PROPERTIES
    var task: Task?
    func didSet() {
         func updateViews() {
            
        }
    }
    
    //MARK: - ACTIONS
    @IBAction func completionButtonTapped(_ sender: Any) {
        
    }
    
    
}
