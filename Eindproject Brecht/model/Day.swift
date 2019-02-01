//
//  Day.swift
//  Eindproject Brecht
//
//  Created by mobapp08 on 31/01/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import Foundation
import MapKit

class Day{
    
    var stageList:[Stage]
    var numberOfDay:Int
    
    init (numberOfDay:Int) {
        stageList = [Stage]()
        self.numberOfDay = numberOfDay
    }
    
    let day1 = Day.init(numberOfDay: 1)
}
