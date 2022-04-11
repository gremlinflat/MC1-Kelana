//
//  Attraction.swift
//  kelana
//
//  Created by Fahri Novaldi on 11/04/22.
//

import Foundation

struct Attraction{
    var name: String
    var location: String
    var description: String
    var imageThumbnail: String
    init(name: String, location: String, desription: String, imageThumbnail: String) {
        self.name = name
        self.location = location
        self.description = desription
        self.imageThumbnail = imageThumbnail
    }
}
