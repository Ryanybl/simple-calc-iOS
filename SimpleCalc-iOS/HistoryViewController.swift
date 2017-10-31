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
    @IBOutlet weak var scrollView: UIScrollView!
    var history:[String] = []
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ViewController
        destination.history = self.history
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if history.count > 1 {
            for i in 0...history.count-1 {
                let label = UILabel(frame: CGRect(x: 20, y: CGFloat(i * 20), width: scrollView.frame.size.width, height: 20))
                label.text = history[i]
                label.adjustsFontSizeToFitWidth = true
                scrollView.addSubview(label)
            }
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
