//
//  ArtistsViewController.swift
//  Eindproject Brecht
//
//  Created by mobapp08 on 01/02/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import UIKit

class ArtistsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let dao = DAO.init()
    
    @IBOutlet weak var artistsTableView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dao.stageList[section].setList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let artistsCell:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "artistsCell")!
        let artist = dao.stageList[indexPath.section].setList[indexPath.row]
        let stage = dao.stageList[indexPath.section]
        if stage.category == "Stages"{
        artistsCell.textLabel?.text = artist.artistName
        }else{
            tableView.rowHeight = 0
        }
        return artistsCell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination:ArtistDetailViewController = segue.destination as! ArtistDetailViewController
        let artistClicked = artistsTableView.indexPathForSelectedRow
        let artist = dao.stageList[artistClicked!.section].setList[artistClicked!.row]
        destination.passedArtist = artist
    }
}
