//
//  ViewController.swift
//  Class02
//
//  Created by stu-35 on 2019/7/6.
//  Copyright © 2019 stu-35. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var lbMsg: UILabel!
    
    var result : float_t = 10.2
    
    @IBAction func btnTestClicked(_ sender: UIButton) {
        print("我按了啥？")
        lbMsg.text = "我要铜锣烧"
        lbMsg.textColor = UIColor.purple
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        var ce : Int
//        ce = 1
//        let de = add(a: 1, b: 2)
//        print(de)
//        print("我一定学得会 Swift")
        //我要去超市了
        let 如果我去超市 = true
        
    
        //有橘子
        let 如果看到橘子 = true
        
        
        if 如果我去超市 {
            
            var 买西瓜的数量 = 1
            
            if 如果看到橘子 {
                买西瓜的数量 = 10
            }
            
            print("我要买 : \( 买西瓜的数量 ) 颗西瓜")
        }
//        if ( 如果我去超市 ) {
//
//            var 要买几颗橘子 = 1
//
//
//            if( 如果看到橘子 ){
//
//                要买几颗橘子 = 10
//
//            }
//            print("买 \(要买几颗橘子) 颗西瓜")
//        }
        
        
    }

    func add(a : Int, b : Int) -> Int {
        return a + b
    }
}

