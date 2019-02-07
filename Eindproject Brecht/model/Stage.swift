//
//  Stage.swift
//  Eindproject Brecht
//
//  Created by mobapp08 on 31/01/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import Foundation
import MapKit

class Stage: NSObject, MKAnnotation{
    
    var stageName:String
    var setList:[Artist]
    var coordinate: CLLocationCoordinate2D
    var category:String
    
    init(stageName:String, coordinate:CLLocationCoordinate2D, category:String) {
        self.stageName = stageName
        self.coordinate = coordinate
        self.category = category
        setList = [Artist]()
    }
    
    var title: String? {
        return stageName
    }
    
    var subtitle: String?{
        return category
    }
}
