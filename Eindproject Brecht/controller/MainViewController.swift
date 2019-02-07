//
//  ViewController.swift
//  Eindproject Brecht
//
//  Created by mobapp08 on 31/01/2019.
//  Copyright © 2019 EhB. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let dao = DAO.init()
    @IBOutlet weak var segControlDay: UISegmentedControl!
    @IBOutlet weak var myTableView: UITableView!
    var lineUpList = [Stage]()
    var lineupFriday = [Stage]()
    var lineupSaturday = [Stage]()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dao.lineUpList.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lineUpList[section].setList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell1")!
        let artist = lineUpList[indexPath.section].setList[indexPath.row]
        cell1.textLabel?.text = artist.artistName
        cell1.detailTextLabel?.text = artist.perfTime
        return cell1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        tableView.sectionHeaderHeight = 55
        return lineUpList[section].stageName
    }
    
    @IBAction func reloadTableView(_ sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0){
            lineUpList = lineupFriday
        }else{
            lineUpList = lineupSaturday
        }
        myTableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lineupFriday = dao.lineUpList[0]
        lineupSaturday = dao.lineUpList[1]
        reloadTableView(segControlDay)
    }
}

