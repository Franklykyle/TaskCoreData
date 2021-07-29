//
//  Task+Convenience.swift
//  TaskCoreData
//
//  Created by Kyle Franklin on 7/27/21.
//

import CoreData

extension Task {
    
    @discardableResult
    convenience init(name: String, notes: String?, dueDate: Date?, context:
    NSManagedObjectContext = CoreDataStack.context) {
        self.init(context:context)
        self.name = name
        self.notes = notes
        self.dueDate = dueDate
        
    }
    
}
