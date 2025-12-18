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
        // 增加宽度并设置更合适的字体
        label.frame = CGRect(x: 20, y: 100, width: 200, height: 30)
        label.font = UIFont.systemFont(ofSize: 18)
        self.view.addSubview(label)
        
        // 示例数组：直接访问越界会导致崩溃（indices 只有 0...4）
        let arr = [1, 2, 3, 4, 5]
        if let value = arr[safe: 5] {
            print(value)
        } else {
            print("Index 5 out of range; valid indices 0...\(arr.count - 1)")
        }
   
    }


}

// 安全下标扩展：返回可选元素，避免越界崩溃
extension Array {
    subscript(safe index: Int) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

