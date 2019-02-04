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
        for var index in 0...20{
            let artist:Artist = Favourites.sharedInstance.favouritesList[index]
            if index == artist.id{
                favCell.textLabel?.text = artist.artistName
            }
            index+=1
        }
        return favCell
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
}
