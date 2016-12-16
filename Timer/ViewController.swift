//
//  ViewController.swift
//  Timer
//
//  Created by Guilherme Henrique Crozariol on 2016-12-16.
//  Copyright © 2016 Lion. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    
    var time = 200
    
    func processTimer() {
        if time > 0 {
            time -= 1
            timerLabel.text = String(time)
        } else {
            timer.invalidate()
        }
    }
    
    @IBAction func play(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.processTimer), userInfo: nil, repeats: true)
    }
    @IBAction func pause(_ sender: Any) {
        timer.invalidate()
    }
    
    @IBAction func minusTen(_ sender: Any) {
        time -= 10
    }
    
    @IBAction func plusTen(_ sender: Any) {
        time += 10
    }
    
    @IBAction func reset(_ sender: Any) {
        time = 201
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
