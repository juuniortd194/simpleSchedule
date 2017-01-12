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
    
    var txt = "Setting the number of lines is very important for dynamically sized cells. A label with number of lines set to 0 will grow based on how much text it is showing. A label with number of lines set to any other number will truncate the text once it’s out of available lines. Connect the bioLabel outlet of ArtistTableViewCell to the label on the cell. One quick way to do this is to Right-Click the Cell in the Document Outline, then click and drag from the empty circle to the right of bioLabel under the Outlets list in the popup menu to label that you laid out:"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 140.0
        
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
        return 1
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
        
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "addSchedule_DateTime", for: indexPath) as! DateHourTbVCell
                
        
        return cell
    }
    
    
    // MARK: - UITableView Delegate
    
    
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        
    }
    
    @IBAction func teste(_ sender: Any) {
        
        let cell = tableView.cellForRow(at: IndexPath(row: 0, section: 0)) as! DateHourTbVCell
        cell.dateTP_Height.constant = 0
        UIView.animate(withDuration: 0.5) {
            self.view.layoutIfNeeded()
        }
        
        
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
