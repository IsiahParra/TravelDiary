//
//  JournalEntryTableViewCell.swift
//  TravelDiary
//
//  Created by Isiah Parra on 5/12/22.
//

import UIKit

class JournalEntryTableViewCell: UITableViewCell {

    @IBOutlet weak var journalEntryTitleLabel: UILabel!
    @IBOutlet weak var journalEntryAddressLabel: UILabel!
    @IBOutlet weak var journalEntryDateLabel: UILabel!
    
    func updateView(for journalEntry: JournalEntry) {
        journalEntryTitleLabel.text = journalEntry.title
        journalEntryAddressLabel.text = journalEntry.address
        journalEntryDateLabel.text = journalEntry.timestamp.stringValue()
    }
}// End OF Class
