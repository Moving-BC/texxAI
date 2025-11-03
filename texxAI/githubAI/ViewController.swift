//
//  ViewController.swift
//  githubAI
//
//  Created by moving on 2025/11/3.
//

import UIKit

class ViewController: UIViewController {
    let label = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label.textColor = UIColor.black
        label.text = "测试"
        label.frame = CGRect(x: 20, y: 100, width: 40, height: 30)
        self.view.addSubview(label)
        
        
    }


}

