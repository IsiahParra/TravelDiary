//
//  JournalEntryDetailViewController.swift
//  TravelDiary
//
//  Created by Isiah Parra on 5/12/22.
//

import UIKit

class JournalEntryDetailViewController: UIViewController {
//MARK: Outlets
    @IBOutlet weak var journalEntryTitleTextField: UITextField!
    @IBOutlet weak var journalEntryAddressTextField: UITextField!
    @IBOutlet weak var jorunalEntryDateLabel: UILabel!
    @IBOutlet weak var journalEntrySummaryTextView: UITextView!
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
    }
    
    // MARK: Properties
    var journalEntryReciever: JournalEntry?
    
    //MARK: Helper Functions
    func updateViews () {
        guard let journalEntry = journalEntryReciever else {return}
        journalEntryTitleTextField.text = journalEntry.title 
        journalEntrySummaryTextView.text = journalEntry.summary
        journalEntryAddressTextField.text = journalEntry.address
        jorunalEntryDateLabel.text = journalEntry.timestamp.stringValue()
    }
    
    //MARK: Actions
    @IBAction func savedButtonTapped(_ sender: Any) {
   guard let title = journalEntryTitleTextField.text,
        let address = journalEntryAddressTextField.text,
            let summary = journalEntrySummaryTextView.text else {return}
        
        
        if let journalEntry = journalEntryReciever {
            //if the receiver has a value they are trying to update the values
            JournalEntryController.sharedInstance.update(entryToUpdate: journalEntry, newTitle: title, address: address, summary: summary)
        } else {
            //else - they are creating a new one
            JournalEntryController.sharedInstance.createJournalEntry(withTitle: title, address: address, summary: summary)
        }
        navigationController?.popViewController(animated: true)
    }

   

}// End Of Class
