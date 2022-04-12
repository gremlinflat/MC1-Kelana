//
//  mockData.swift
//  kelana
//
//  Created by Fahri Novaldi on 11/04/22.
//

import Foundation

class MockData{
    var destinations = [
        Destination(name: "Banyumala Waterfalls", location: "Buleleng, Bali", imageLocations: ["https://github.com/gremlinflat/kelana-image-repo/raw/master/Destination/banyumala.jpeg"], tags: ["Nature"] , description: "The Banyumala Waterfalls is one of Bali’s lesser-known beauties, located at Wanagiri village, Buleleng. Locals call this waterfall a twin waterfall, since there are a couple streams of water falling down the cliff from 20 meters high. This beauty waterfall  is an entirely natural trail that’s rarely traveled, unlike others.  Its water curtain of diverse trickles of water cascades over a wall of luxuriant rocks just past the waterfall.  Probably, will be a bit difficult to find Banyumala Waterfalls. But, it’s a worthy journey for the view alone."),
        // TODO: description
        Destination(name: "Desa Ubud", location: "Ubud, Bali", imageLocations: ["https://github.com/gremlinflat/kelana-image-repo/raw/master/Destination/baliMonkeyForest1.jpg", "https://github.com/gremlinflat/kelana-image-repo/raw/master/Destination/baliMonkeyForest2.jpg", "https://github.com/gremlinflat/kelana-image-repo/raw/master/Destination/baliMonkeyForest3.jpg", "https://github.com/gremlinflat/kelana-image-repo/raw/master/Destination/baliMonkeyForest4.jpg"], tags: ["Nature"], description: "The Ubud Sacred Monkey Forest is a nature reserve and temple complex in Ubud, Bali. It houses approximately 340 monkeys which are known as long-tailed Macaques (Macaca fascicularis). There are four groups of monkeys each occupying different territories in the park. The Sacred Monkey Forest is a popular tourist attraction in Ubud and is often visited by over 10,000 tourists a month.", attractions: [
            Attraction(name: "Monkey Forest Ubud", location: "Ubud, Bali", desription: "monkeyforest description // todo", imageThumbnail: "https://github.com/gremlinflat/kelana-image-repo/raw/master/Destination/baliMonkeyForest2.jpg"),
            Attraction(name: "Beji Temple", location: "Ubud, Bali", desription: "beji temple description", imageThumbnail: "https://github.com/gremlinflat/kelana-image-repo/raw/master/Attraction/Beji%20Temple.jpeg"),
            Attraction(name: "Dalem Temple", location: "Ubud, Bali", desription: "dalem temple description", imageThumbnail: "https://github.com/gremlinflat/kelana-image-repo/raw/master/Attraction/DalemTemple.jpg"),
            Attraction(name: "Prajapati Temple", location: "Ubud, Bali", desription: "prajapati Temple", imageThumbnail: "https://thumbs.dreamstime.com/b/ubud-indonesia-outer-entrance-to-balinese-temple-167575469.jpg"),
            Attraction(name: "Balinese longtail monkey", location: "Ubud, Bali", desription: "xxx", imageThumbnail: "https://thumbs.dreamstime.com/b/ubud-indonesia-outer-entrance-to-balinese-temple-167575469.jpg")
        ]),
        Destination(name: "Garuda Whisnu Kencana", location: "Kuta Selatan", imageLocations: ["https://asset.kompas.com/crops/fhyXeS2borIrSmZbPebufHwNVdQ=/12x8:993x662/750x500/data/photo/2018/09/27/1679906755.jpg", "https://www.jatayurental.com/wp-content/uploads/2017/07/garuda-wisnu-kencana-e1582295915712.jpg"], tags: ["Historical"], description: "Garuda Wisnu Kencana Cultural Park (Indonesian: Taman Budaya Garuda Wisnu Kencana), or GWK, is a tourist destination and attraction located at Ungasan, Badung on the island of Bali, Indonesia about 10–15 minutes drive from Ngurah Rai International Airport. It is devoted to the Hindu god Vishnu, and his mount, Garuda, the mythical bird who became his companion. Owned and managed by Alam Sutera Realty, Tbk, the construction of the 120.9-metre statue of Vishnu riding his mount Garuda was completed in August 2018. The park has a land area of about 60 hectares and is 263 metres above sea level", attractions: [
            Attraction(name: "Street Theatre", location: "GWK Cultural Park", desription: "Street theatre", imageThumbnail: "https://www.jatayurental.com/wp-content/uploads/2017/07/garuda-wisnu-kencana-e1582295915712.jpg"),
            Attraction(name: "Wisnu Plaza", location: "GWK Cultural Park", desription: "Conviniete", imageThumbnail: "https://www.jatayurental.com/wp-content/uploads/2017/07/garuda-wisnu-kencana-e1582295915712.jpg"),
            Attraction(name: "Lotus Pond", location: "GWK Cultural Park", desription: "xxxxxx", imageThumbnail: "https://www.jatayurental.com/wp-content/uploads/2017/07/garuda-wisnu-kencana-e1582295915712.jpg"),
            Attraction(name: "Festival Park", location: "GWK Cultural Park", desription: "xafas", imageThumbnail: "https://www.jatayurental.com/wp-content/uploads/2017/07/garuda-wisnu-kencana-e1582295915712.jpg"),
        ])
        
        
        
    ]
}
