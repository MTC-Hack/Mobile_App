//
//  CrashesViewController.swift
//  MTC-Rat
//
//  Created by Кирилл Володин on 29.09.17.
//  Copyright © 2017 Кирилл Володин. All rights reserved.
//

import UIKit

class CrashesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView()
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if segmentControl.selectedSegmentIndex == 0 {
            return 2
        }
        else {
            return 3
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CrashCell", for: indexPath) as! CrashCell
        if segmentControl.selectedSegmentIndex == 0 {
            cell.statusImage.image = UIImage(named: "danger")
        }
        else {
            cell.statusImage.image = UIImage(named: "ok")
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "toCrash", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    @IBAction func changeCrashesType(_ sender: UISegmentedControl) {
        tableView.reloadData()
    }
    
    
}
