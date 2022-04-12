//
//  AttractionDummy.swift
//  kelana
//
//  Created by Rizky Maulana on 12/04/22.
//

import Foundation

struct EventDummy{
    let title: String
    let location: String
    let imageName: String
}
extension EventDummy{
    static let data: [EventDummy] = [
        EventDummy(title: "Galungan & Kuningan", location: "Ubud Bali", imageName: "Rectangle")
    ]
}


