//
//  SharedFavouritesInstance.swift
//  Eindproject Brecht
//
//  Created by mobapp08 on 04/02/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import Foundation

class Favourites{
    
    static let sharedInstance = Favourites()
    
    var favouritesList:[Artist]
    
    private init(){
        favouritesList = [Artist]()
    }
    
    func addArtist(artist:Artist){
        self.favouritesList.append(artist)
    }
    
    func removeArtist(artist:Artist){
        self.favouritesList.remove(at: artist.id)
    }

}
