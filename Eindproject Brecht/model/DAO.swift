//
//  DAO.swift
//  Eindproject Brecht
//
//  Created by Brecht Gorissen on 31/01/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import Foundation
import MapKit

class DAO{
    
    var stageList:[Stage]
    
    init(){
        let shrimpsOfDeathMetal = Artist.init(id: 1, artistName: "Shrimps Of Death Metal", artistImage: "", perfDay: 1, perfTime: "16.30u - 17.30u", genre: "Alternative Rock", bio: "")
        let shrimpOfGod = Artist.init(id: 2, artistName: "Shrimp Of God", artistImage: "", perfDay: 1, perfTime: "18.00u - 19.00u", genre: "Groove Metal", bio: "")
        let shrimpZombie = Artist.init(id: 3, artistName: "Shrimp Zombie", artistImage: "", perfDay: 1, perfTime: "19.30u - 20.30u", genre: "Alternative Rock", bio: "")
        let lynyrdShrimpnyrd = Artist.init(id: 4, artistName: "Lynyrd Shrimpnyrd", artistImage: "", perfDay: 1, perfTime: "21.00u - 22.00u", genre: "Hard Rock", bio: "")
        let shrimpKnot = Artist.init(id: 5, artistName: "Shrimpknot", artistImage: "", perfDay: 1, perfTime: "22.30u - 00.30u", genre: "Alternative Metal", bio: "")
        
        let shrimpSmack = Artist.init(id: 6, artistName: "Shrimpsmack", artistImage: "", perfDay: 2, perfTime: "16.30u - 17.30u", genre: "Alternative Metal", bio: "")
        let stoneTempleShrimps = Artist.init(id: 7, artistName: "Stone Temple Shrimps", artistImage: "", perfDay: 2, perfTime: "18.00u - 19.00u", genre: "Grunge", bio: "")
        let whiteShrimp = Artist.init(id: 8, artistName: "Whiteshrimp", artistImage: "", perfDay: 2, perfTime: "19.30u - 20.30u", genre: "Heavy Metal", bio: "")
        let defShrimp = Artist.init(id: 9, artistName: "Def Shrimp", artistImage: "", perfDay: 2, perfTime: "21.00u - 22.00u", genre: "Heavy Metal", bio: "")
        let shrimpTemptation = Artist.init(id: 10, artistName: "Shrimp Temptation", artistImage: "", perfDay: 2, perfTime: "22.30u - 00.30u", genre: "Alternative Metal", bio: "")
        
        let shrimpStage = Stage.init(stageName: "Shrimp Stage", coordinate: CLLocationCoordinate2DMake(51.152238, 2.721087), category: "Stages")
        shrimpStage.setList+=[shrimpsOfDeathMetal, shrimpOfGod, shrimpZombie, lynyrdShrimpnyrd, shrimpKnot, shrimpSmack, stoneTempleShrimps, whiteShrimp, defShrimp, shrimpTemptation]
        let drinks1 = Stage.init(stageName: "Drinks 1", coordinate: CLLocationCoordinate2DMake(51.149543, 2.713744), category: "Drinks")
        let drinks2 = Stage.init(stageName: "Drinks 2", coordinate: CLLocationCoordinate2DMake(51.149018, 2.714387), category: "Drinks")
        let drinks3 = Stage.init(stageName: "Drinks 3", coordinate: CLLocationCoordinate2DMake(51.148452, 2.711731), category: "Drinks")

        self.stageList = [shrimpStage, drinks1, drinks2, drinks3]
    }
    
}
