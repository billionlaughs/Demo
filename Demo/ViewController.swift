//
//  ViewController.swift
//  Demo
//
//  Created by Mukilarasan R on 09/12/19.
//  Copyright © 2019 Mukilarasan R. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var uiLabelToShow: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //Will be invoked when app goes to background
        NotificationCenter.default.addObserver(self, selector: #selector(myBGObserver), name: .UIApplicationWillResignActive, object: nil)
        //Will be invoked when app goes to foreground
        NotificationCenter.default.addObserver(self, selector: #selector(myFGObserver), name: .UIApplicationWillEnterForeground, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @objc func myBGObserver(){
        uiLabelToShow.text = "Background";
    }
    @objc func myFGObserver(){
        uiLabelToShow.text = "Foreground";
    }
}

