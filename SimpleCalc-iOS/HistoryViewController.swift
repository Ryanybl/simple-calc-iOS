//
//  HistoryViewController.swift
//  SimpleCalc-iOS
//
//  Created by Ryan Liang on 10/26/17.
//  Copyright © 2017 Ryan Liang. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class HistoryViewController: UIViewController {
    @IBOutlet weak var scroll: UIScrollView!
    var history : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for str in history {
            let label = UILabel()
            label.text = str
            scroll.addSubview(label)
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
