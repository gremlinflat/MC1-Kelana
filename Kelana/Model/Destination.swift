//
//  Destination.swift
//  kelana
//
//  Created by Fahri Novaldi on 11/04/22.
//

import Foundation

struct Destination {
    var name: String
    var location: String
    var prices: String?
    var transport: [Transport]?
    var schedule: String?
    var description: String?
    
    var isBookmarked: Bool
    var imageLocation: String
    var tags: [Tags]
    
    init(name: String , location: String , imageLocation: String, tags: Tags ) {
        self.name = name;
        self.location = location
        self.imageLocation = imageLocation
        self.isBookmarked = false
        for tag in tags {
            self.tags.append(tag)
        }
        
    }
    
    mutating func setBookmark(){
        self.isBookmarked = !self.isBookmarked
    }
}

enum Transport {
    case car;
    case bike;
    case byFoot;
}

enum Tags{
    case nature;
    case historical;
}

