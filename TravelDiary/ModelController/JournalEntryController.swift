//
//  JournalEntryController.swift
//  TravelDiary
//
//  Created by Isiah Parra on 5/12/22.
//

import Foundation

class JournalEntryController {
    
    //MARK: - Source of Truth
    
    // Singleton
    static let sharedInstance = JournalEntryController()
    // Collection
    var journalEntries: [JournalEntry] = []
    
    //MARK: - CRUD
    func createJournalEntry(withTitle title: String, address: String, summary: String) {
    let journalEntry = JournalEntry(title: title, address: address, summary: summary)
        journalEntries.append(journalEntry)
    }
    
    func update(entryToUpdate: JournalEntry, newTitle: String, address: String, summary: String) {
        entryToUpdate.title = newTitle
        entryToUpdate.summary = summary
        entryToUpdate.address = address
    }
    
    func delete(journalEntryToDelete: JournalEntry) {
        guard let index = journalEntries.firstIndex(of: journalEntryToDelete) else {return}
        journalEntries.remove(at: index)
    }
    
}// End of class
