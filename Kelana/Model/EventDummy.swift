//
//  EventDummy.swift
//  kelana
//
//  Created by Nabilla Azarine on 13/04/22.
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
