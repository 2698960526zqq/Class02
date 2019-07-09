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
    
    @IBOutlet weak var btnHiBottomConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    @IBAction func btnAClicked(_ sender: UIButton) {
        print("我按了啥？")
        lbXLMsg.text = "我要巧克力🍫"
        lbXLMsg.textColor = UIColor.brown
        
    }


    
    //.tentcent.com
    @objc func keyboardWillShow(notification: NSNotification) {
        let keyboardHeight = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height
        print("猜猜看：\(keyboardHeight)")
        
        btnHiBottomConstraint.constant = keyboardHeight
    }
    
    //    @objc func keyboardWillHide(notification: NSNotification) {
    //        let keyboardHeight = (notification.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as! NSValue).cgRectValue.height
    //        print(keyboardHeight)
    //    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
}
