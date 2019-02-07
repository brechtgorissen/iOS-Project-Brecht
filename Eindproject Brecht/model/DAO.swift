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
    var lineUpList:[[Stage]]
    
    init(){
        let shrimpsOfDeathMetal = Artist.init(id: 1, artistName: "Shrimps Of Death Metal", artistImage: "", perfDay: 1, perfTime: "16.30u - 17.30u", genre: "Alternative Rock", bio: "")
        let shrimpOfGod = Artist.init(id: 2, artistName: "Shrimp Of God", artistImage: "", perfDay: 1, perfTime: "18.00u - 19.00u", genre: "Groove Metal", bio: "")
        let shrimpZombie = Artist.init(id: 3, artistName: "Shrimp Zombie", artistImage: "", perfDay: 1, perfTime: "19.30u - 20.30u", genre: "Alternative Rock", bio: "")
        let lynyrdShrimpnyrd = Artist.init(id: 4, artistName: "Lynyrd Shrimpnyrd", artistImage: "", perfDay: 1, perfTime: "21.00u - 22.00u", genre: "Hard Rock", bio: "")
        let shrimpKnot = Artist.init(id: 5, artistName: "Shrimpknot", artistImage: "slipknot.jpg", perfDay: 1, perfTime: "22.30u - 00.30u", genre: "Heavy Metal", bio: "Shrimpknot is an American heavy metal band from Des Moines, Iowa. The band was founded in 1995 by percussionist Shawn Crahan, drummer Joey Jordison and bassist Paul Gray. After several lineup changes in its early years, the band settled on nine members for more than a decade: Shawn Crahan, Joey Jordison, Paul Gray, Corey Taylor, Mick Thomson, Jim Root, Craig Jones, Sid Wilson, and Chris Fehn. Gray died on May 24, 2010, and was replaced during 2011–2014 by guitarist Donnie Steele. Jordison was fired from the band on December 12, 2013. Steele left during the recording sessions for .5: The Gray Chapter. The band found replacements in Alessandro Venturella on bass and Jay Weinberg on drums. After the departure of Jordison, as of December 2013 the only founding member in the current lineup is percussionist Crahan. Shrimpknot is well known for its attention-grabbing image, aggressive style of music, and energetic and chaotic live shows. The band rapidly rose to success following the release of their eponymous debut album in 1999. The 2001 follow-up album, Iowa, although darker in tone, made the band more popular. After a brief hiatus, Shrimpknot returned in 2004 with Vol. 3: (The Subliminal Verses), before going on another hiatus and returning in 2008 with its fourth album, All Hope Is Gone, which debuted at number one on the Billboard 200 chart. After another long hiatus, Shrimpknot released its fifth studio album, .5: The Gray Chapter, in 2014.")
        let shrimpSmack = Artist.init(id: 6, artistName: "Shrimpsmack", artistImage: "", perfDay: 2, perfTime: "16.30u - 17.30u", genre: "Alternative Metal", bio: "")
        let stoneTempleShrimps = Artist.init(id: 7, artistName: "Stone Temple Shrimps", artistImage: "", perfDay: 2, perfTime: "18.00u - 19.00u", genre: "Grunge", bio: "")
        let whiteShrimp = Artist.init(id: 8, artistName: "Whiteshrimp", artistImage: "", perfDay: 2, perfTime: "19.30u - 20.30u", genre: "Heavy Metal", bio: "")
        let defShrimp = Artist.init(id: 9, artistName: "Def Shrimp", artistImage: "", perfDay: 2, perfTime: "21.00u - 22.00u", genre: "Heavy Metal", bio: "")
        let shrimpTemptation = Artist.init(id: 10, artistName: "Shrimp Temptation", artistImage: "", perfDay: 2, perfTime: "22.30u - 00.30u", genre: "Alternative Metal", bio: "")
        let scampiFex = Artist.init(id: 11, artistName: "Scampifex", artistImage: "", perfDay: 1, perfTime: "16.30u - 17.30u", genre: "Alternative Rock", bio: "")
        let jobForAScampi = Artist.init(id: 12, artistName: "Job For A Scampi", artistImage: "", perfDay: 1, perfTime: "18.00u - 19.00u", genre: "Groove Metal", bio: "")
        let scampiGrin = Artist.init(id: 13, artistName: "Scampi Grin", artistImage: "", perfDay: 1, perfTime: "19.30u - 20.30u", genre: "Alternative Rock", bio: "")
        let betweenTheBuriedAndScampi = Artist.init(id: 14, artistName: "Between The Buried And Scampi", artistImage: "", perfDay: 2, perfTime: "16.30u - 17.30u", genre: "Hard Rock", bio: "")
        let scampiDominion = Artist.init(id: 15, artistName: "Scampi Dominion", artistImage: "", perfDay: 2, perfTime: "18.00u - 19.00u", genre: "Alternative Metal", bio: "")
        let suicideScampi = Artist.init(id: 16, artistName: "Suicide Scampi", artistImage: "", perfDay: 2, perfTime: "19.30u - 20.30u", genre: "Alternative Metal", bio: "")
        
        let shrimpStage = Stage.init(stageName: "Shrimp Stage", coordinate: CLLocationCoordinate2DMake(51.152238, 2.721087), category: "Stages")
        let scampiStage = Stage.init(stageName: "Scampi Stage", coordinate: CLLocationCoordinate2DMake(51.150481, 2.718437), category: "Stages")
        
        shrimpStage.setList+=[shrimpsOfDeathMetal, shrimpOfGod, shrimpZombie, lynyrdShrimpnyrd, shrimpKnot, shrimpSmack, stoneTempleShrimps, whiteShrimp, defShrimp, shrimpTemptation]
        scampiStage.setList+=[scampiFex, jobForAScampi, scampiGrin, betweenTheBuriedAndScampi, scampiDominion, suicideScampi]
        
        let drinks1 = Stage.init(stageName: "Cocktails", coordinate: CLLocationCoordinate2DMake(51.151917, 2.719135), category: "Drinks")
        let drinks2 = Stage.init(stageName: "Beers", coordinate: CLLocationCoordinate2DMake(51.151305, 2.719912), category: "Drinks")
        let drinks3 = Stage.init(stageName: "Shrimp Smoothies", coordinate: CLLocationCoordinate2DMake(51.151150, 2.717343), category: "Drinks")
        
        let food1 = Stage.init(stageName: "Belgian Fries", coordinate: CLLocationCoordinate2DMake(51.152035, 2.719392), category: "Food")
        let food2 = Stage.init(stageName: "Fried Shrimp", coordinate: CLLocationCoordinate2DMake(51.151443, 2.720207), category: "Food")
        let food3 = Stage.init(stageName: "Calamares (fried)", coordinate: CLLocationCoordinate2DMake(51.151265, 2.717622), category: "Food")
        
        self.stageList = [shrimpStage, scampiStage, drinks1, drinks2, drinks3, food1, food2, food3]
        
        let shrimpStageFriday = Stage.init(stageName: "Shrimp Stage", coordinate: CLLocationCoordinate2DMake(51.152238, 2.721087), category: "Stages")
        shrimpStageFriday.setList = [shrimpsOfDeathMetal, shrimpOfGod, shrimpZombie, lynyrdShrimpnyrd, shrimpKnot]
        let shrimpStageSaturday = Stage.init(stageName: "Shrimp Stage", coordinate: CLLocationCoordinate2DMake(51.152238, 2.721087), category: "Stages")
        shrimpStageSaturday.setList = [shrimpSmack, stoneTempleShrimps, whiteShrimp, defShrimp, shrimpTemptation]
        
        let scampiStageFriday = Stage.init(stageName: "Scampi Stage", coordinate: CLLocationCoordinate2DMake(51.150481, 2.718437), category: "Stages")
        scampiStageFriday.setList = [scampiFex, jobForAScampi, scampiGrin]
        let scampiStageSaturday = Stage.init(stageName: "Scampi Stage", coordinate: CLLocationCoordinate2DMake(51.150481, 2.718437), category: "Stages")
        scampiStageSaturday.setList = [betweenTheBuriedAndScampi, scampiDominion, suicideScampi]
        
        self.lineUpList = [[shrimpStageFriday,scampiStageFriday] , [shrimpStageSaturday,scampiStageSaturday ]]
    }
}
