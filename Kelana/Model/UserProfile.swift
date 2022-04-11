//
//  UserProfile.swift
//  kelana
//
//  Created by Fahri Novaldi on 11/04/22.
//

import Foundation
///coredata implementation
struct UserProfile{
    var name: String
    var interest: [Tags]
    var bookmark: [BookmarkItem]
    var lastView: [Destination]
    
    mutating func updateLastView(destination: Destination){
        lastView.popLast()
        
    }
}

