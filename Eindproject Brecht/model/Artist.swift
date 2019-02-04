//
//  Artist.swift
//  Eindproject Brecht
//
//  Created by mobapp08 on 31/01/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import Foundation

class Artist{
    
    var id:Int
    var artistName:String
    var artistImage:String
    var perfDay:Int
    var perfTime:String
    var genre:String
    var bio:String
    
    init(id:Int, artistName:String, artistImage:String, perfDay:Int, perfTime:String, genre:String, bio:String) {
        self.id = id
        self.artistName = artistName
        self.artistImage = artistImage
        self.perfDay = perfDay
        self.perfTime = perfTime
        self.genre = genre
        self.bio = bio
    }
}
