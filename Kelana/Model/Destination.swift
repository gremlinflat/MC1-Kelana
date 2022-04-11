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
    var transport: [String] = []// TODO: SWITCH TO ENUM TYPE
    var schedule: String?
    var description: String
    
    var attractionInside: [Attraction] = []
    
    var isBookmarked: Bool
    var imageLocations: [String] = []
    var tags: [String] = [] //TODO: SWITCH TO ENUM TYPE
    
    
    init(name: String , location: String , imageLocations: [String], tags: [String] , description: String ) {
        self.name = name;
        self.location = location
        self.isBookmarked = false
        self.description = description
        self.imageLocations = imageLocations
        
        //iterating tags
        for tag in tags {
            self.tags.append(tag)
        }
    }
    
    init(name: String , location: String , imageLocations: [String], tags: [String] , description: String, attractions: [Attraction]) {
        
        self.init(name: name, location: location, imageLocations: imageLocations, tags: tags, description: description)
        
        //iterating attractions
        for attraction in attractions {
            self.attractionInside.append(attraction)
        }
        
    }
    mutating func addAttractions(attractions: [Attraction]){
        for attraction in attractions {
            self.attractionInside.append(attraction)
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

