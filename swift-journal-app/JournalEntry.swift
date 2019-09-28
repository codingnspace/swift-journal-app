//
//  JournalEntry.swift
//  swift-journal-app
//
//  Created by Pearl on 9/28/19.
//  Copyright © 2019 Pearl. All rights reserved.
//

import Foundation
import CoreData

public class JournalEntry: NSManagedObject, Identifiable {
    
    @NSManaged public var created_at: Date?
    @NSManaged public var journal_entry: String?
    
}

extension JournalEntry {
    static func getAllEntries() -> NSFetchRequest<JournalEntry> {
        let request: NSFetchRequest<JournalEntry> = JournalEntry.fetchRequest() as! NSFetchRequest<JournalEntry>
        let sortDescriptor: NSSortDescriptor = NSSortDescriptor(key: "created_at", ascending: true)
        request.sortDescriptors = [sortDescriptor]
        return request
    }
}
