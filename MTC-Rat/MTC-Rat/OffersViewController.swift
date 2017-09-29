//
//  OffersViewController.swift
//  MTC-Rat
//
//  Created by Кирилл Володин on 29.09.17.
//  Copyright © 2017 Кирилл Володин. All rights reserved.
//

import UIKit

class OffersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.separatorStyle = .none
        tableview.delegate = self
        tableview.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableview.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "toConfirm", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OfferCell", for: indexPath) as! OfferCell
        let tap = UITapGestureRecognizer(target: self, action: #selector(showService))
        cell.serviceImage.addGestureRecognizer(tap)
        cell.serviceImage.isUserInteractionEnabled = true
        return cell
    }
    
    @objc func showService() {
        performSegue(withIdentifier: "toService", sender: nil)
    }
    
}
