//
//  AsyncRequestWorker.swift
//  MVCDemo
//
//  Created by 房懷安 on 2019/2/1.
//  Copyright © 2019 房懷安. All rights reserved.
//

import Foundation
import UIKit

protocol AsyncReponseDelegate {
    func receviedReponse(_ sender: AsyncRequestWorker, responseString : String, tag : Int) -> Void
}

class AsyncRequestWorker {
    
    var reponseDelegate : AsyncReponseDelegate?
    
    func getResponse(from:String, tag:Int) -> Void {
       
        // url:网址 资源的位置  赋予url网址
        let url = URL(string: from)!
        
        // request:请求 资源的请求  发动连接请求
        let request = URLRequest(url: url)
        // config:配置  配置连接
        let config = URLSessionConfiguration.default
        // session:阶段 会议 configuration：配置  建立会话
        let session = URLSession(configuration: config)
        // dataTask:数据任务 completion:完成  开始会话
        let task = session.dataTask(with: request, completionHandler: { (data, response, error) in
         // ？是马厩有没有🐎， ！不管其他的，就认为马厩里有马  把response强制转换为HTTPURLResponse
            let httpResponse = response as! HTTPURLResponse
            let statusCode = httpResponse.statusCode
            
            if( 200 == statusCode){
                // 把data转换成String型
                let dataString = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
                let responseString = String( dataString! )
                
                NotificationCenter.default.post(name: NSNotification.Name(rawValue: "response.received"), object: self, userInfo: ["response": responseString])
                // receviedReponse:收货方
                self.reponseDelegate?.receviedReponse(self, responseString: responseString, tag: tag)
            }
        })
        task.resume()
    }
}
