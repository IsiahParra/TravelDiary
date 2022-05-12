//
//  JournalEntry.swift
//  TravelDiary
//
//  Created by Isiah Parra on 5/12/22.
//

import Foundation

class JournalEntry {
    
    // Stored Properties
    
    /// The title the user will assign for this entry
    var title: String
    /// The address the user will assign for this entry - String not GPS
    var address: String
    /// The date that will be auto assigned when a user creates a journal entry
    var timestamp: Date
    /// The summary the user will assign for this entry
    var summary: String
    
    /// MEMBER WISE Initializer: a JournalEntry object with the value provided by the user... eventually.
    init(title: String, address: String, timestamp: Date = Date(), summary: String) {
      /// Self references the specific instance of the JournalEntry
        self.title = title
        self.address = address
        self.timestamp = timestamp
        self.summary = summary
    }
    
    
    
}// end of class
