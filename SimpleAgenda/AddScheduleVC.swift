//
//  AddScheduleVC.swift
//  SimpleAgenda
//
//  Created by Francisco Júnior on 1/8/17.
//  Copyright © 2017 JRTheDeveloper. All rights reserved.
//

import UIKit

class AddScheduleVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var dateForSchedule : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UITableView Datasource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return 2
        case 1:
            return 1
        default:
            return 0
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 1:
            return 200
        default:
            return 60
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Date and Hour"
        case 1:
            return "Schedule text"
        default:
            return ""
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return getCell(tableView: tableView, indexPath: indexPath)
    }
    
    func getCell(tableView: UITableView, indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            return tableView.dequeueReusableCell(withIdentifier: "addSchedule_hour", for: indexPath)
        case 1:
            return tableView.dequeueReusableCell(withIdentifier: "addSchedule_text", for: indexPath)
        default:
            return tableView.dequeueReusableCell(withIdentifier: "addSchedule_text", for: indexPath)
        }
    }
    
    
    // MARK: - UITableView Delegate

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
