//
//  BViewController.swift
//  Class02
//
//  Created by stu-35 on 2019/7/9.
//  Copyright © 2019 stu-35. All rights reserved.
//

import UIKit

class BViewController: UIViewController {

    @IBOutlet weak var lbMsg: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnTestClicked(_ sender: UIButton) {
        print("我按了啥？")
        lbMsg.text = "我要奶油蛋糕🍰"
        lbMsg.textColor = UIColor.purple
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
