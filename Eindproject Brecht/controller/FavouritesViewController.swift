//
//  FavouritesViewController.swift
//  Eindproject Brecht
//
//  Created by mobapp08 on 04/02/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import UIKit

class FavouritesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Favourites.sharedInstance.favouritesList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let favCell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "favCell")!
        let artist:Artist = Favourites.sharedInstance.favouritesList[0]
        favCell.textLabel?.text = artist.artistName
        return favCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
