//
//  TaskDetailViewController.swift
//  TaskCoreData
//
//  Created by Kyle Franklin on 7/27/21.
//

import UIKit

class TaskDetailViewController: UIViewController {
    
    //MARK: - OUTLETS
    @IBOutlet weak var taskNameTextField: UITextField!
    @IBOutlet weak var taskNotesTextView: UITextView!
    @IBOutlet weak var taskDueDatePicker: UIDatePicker!
    
    //MARK: - PROPERTIES
    var task: Task?
    var date: Date?
    
    
    //MARK: - LIFECYCLES
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

       
    }
    
    //MARK: - ACTION
    @IBAction func saveButtonTapped(_ sender: Any) {
        guard let taskName = taskNameTextField.text, !taskName.isEmpty else { return }
        
        if let task = self.task {
            TaskController.shared.updateTasks(task: task, name: taskName, notes: taskNotesTextView.text, dueDate: taskDueDatePicker.date)
        } else {
            TaskController.shared.createTaskWith(name: taskName, notes: taskNotesTextView.text, dueDate: taskDueDatePicker.date)
        }
    }
    
    @IBAction func dueDatePickerDateChanged(_ sender: Any) {
    }
    
    
    //MARK: - HELPER METHOD
    func updateViews() {
        guard let task = task else { return }
        taskNameTextField.text = task.name
        taskDueDatePicker.date = task.dueDate ?? Date()
    }

}
