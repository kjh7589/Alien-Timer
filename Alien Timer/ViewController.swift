//
//  ViewController.swift
//  Alien Timer
//
//  Created by D7703_25 on 2018. 4. 5..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var chk = true
    var count = 1
    var myTimer = Timer()
    var Ani = false
    
    @IBOutlet weak var Image: UIImageView!
    @IBOutlet weak var lab: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lab.text = String(count)
        
    }
    @IBAction func But(_ sender: Any) {
        if Ani == false {
            myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.doAniation), userInfo: nil, repeats: true)
            Ani = true
        } else {
            myTimer.invalidate()
            Ani = false
        }
    }
    @objc func doAniation(){
        if count == 5 {
            chk = false
            count = count - 1
        } else if count == 1 {
            chk = true
            count = count + 1
        } else if chk == false {
            count = count - 1
        } else if chk == true {
            count = count + 1
        }
        Image.image = UIImage(named: "frame\(count).png")
        lab.text = String(count)
    }
}
