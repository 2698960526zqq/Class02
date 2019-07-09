//
//  AViewController.swift
//  Class02
//
//  Created by stu-35 on 2019/7/9.
//  Copyright © 2019 stu-35. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    @IBOutlet weak var lbXLMsg: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnAClicked(_ sender: UIButton) {
        print("我按了啥？")
        lbXLMsg.text = "我要巧克力🍫"
        lbXLMsg.textColor = UIColor.brown
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
