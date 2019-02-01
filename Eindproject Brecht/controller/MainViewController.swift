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
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return dao.stageList.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dao.stageList[section].setList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell1:UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell1")!
        let artist = dao.stageList[indexPath.section].setList[indexPath.row]
        let stage = dao.stageList[indexPath.section]
        tableView.rowHeight = 44
        switch (segControlDay.selectedSegmentIndex) {
        case 0:
            if artist.perfDay == 1 && stage.category == "Stages"{
                cell1.textLabel?.text = artist.artistName
                cell1.detailTextLabel?.text = artist.perfTime
            }else{
                tableView.rowHeight = 0
            }
        case 1:
            if artist.perfDay == 2 && stage.category == "Stages"{
                cell1.textLabel?.text = artist.artistName
                cell1.detailTextLabel?.text = artist.perfTime
            }else{
                tableView.rowHeight = 0
            }
        default:
            break
            
        }
        return cell1
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let stage = dao.stageList[section]
        tableView.sectionHeaderHeight = 55
        if stage.category == "Stages"{
            return dao.stageList[section].stageName
        }else{
            tableView.sectionHeaderHeight = 0
            return ""
        }
    }
    
    @IBAction func reloadTableViewData() {
        myTableView.reloadData()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.reloadTableViewData()
        // Do any additional setup after loading the view, typically from a nib.
    }

}

