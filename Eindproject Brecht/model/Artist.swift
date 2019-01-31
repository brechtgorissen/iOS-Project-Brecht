//
//  Artist.swift
//  Eindproject Brecht
//
//  Created by mobapp08 on 31/01/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import Foundation

class Artist{
    
    var name:String
    var artistImage:String
    var perfDay:Int
    var perfTime:String
    var genre:String
    var bio:String
    
    init(name:String, artistImage:String, perfDay:Int, perfTime:String, genre:String, bio:String) {
        self.name = name
        self.artistImage = artistImage
        self.perfDay = perfDay
        self.perfTime = perfTime
        self.genre = genre
        self.bio = bio
    }
    
    let filthTalent = Artist.init(name: "Filth Talent", artistImage: "", perfDay: 1, perfTime: "16.30u - 17.30u", genre: "Deathcore", bio: "")
    let metalDeath = Artist.init(name: "Metal Death", artistImage: "", perfDay: 1, perfTime: "18.00u - 19.00u", genre: "Thrash Metal", bio: "")
    let betweenTheKillersAndMe = Artist.init(name: "Between The Killers And Me", artistImage: "", perfDay: 1, perfTime: "19.30u - 20.30u", genre: "Progressive Metal", bio: "")
    let lordOfTheBrutalRats = Artist.init(name: "Lord Of The Brutal Rats", artistImage: "", perfDay: 1, perfTime: "21.00u - 22.00u", genre: "Metalcore", bio: "")
    let megaDeath = Artist.init(name: "Megadeath", artistImage: "", perfDay: 1, perfTime: "22.30u - 00.30u", genre: "Thrash Metal", bio: "")
}
