//
//  BookmarkItem.swift
//  kelana
//
//  Created by Fahri Novaldi on 11/04/22.
//

import Foundation

struct BookmarkItem{
    var destination: Destination
    var estimatedDate: Date
    var personalNotes: String
    
    init(destination: Destination, estimateddate: Date, personalNotes: String) {
        self.destination = destination
        self.estimatedDate = estimateddate
        self.personalNotes = personalNotes
    }
    
    mutating func editNotes(newNote: String) -> Void {
        self.personalNotes = newNote
    }
}
