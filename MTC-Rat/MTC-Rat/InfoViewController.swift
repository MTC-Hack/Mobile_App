//
//  InfoViewController.swift
//  MTC-Rat
//
//  Created by Кирилл Володин on 28.09.17.
//  Copyright © 2017 Кирилл Володин. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var vinLabel: UILabel!
    @IBOutlet weak var numberView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        numberView.layer.borderWidth = 2
        numberView.layer.borderColor = UIColor.black.cgColor
        vinLabel.layer.cornerRadius = 10
        vinLabel.clipsToBounds = true
    }

}
