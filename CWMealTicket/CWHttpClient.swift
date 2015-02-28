//
//  CWMHttpClient.swift
//  CWMealTicket
//
//  Created by 安宅 正之 on 2015/02/25.
//  Copyright (c) 2015年 Masayuki Ataka. All rights reserved.
//

import UIKit

class CWHttpClient: NSObject {
    private let roomId :String = ""
    private let userToken :String = ""
    private let baseUrl :String = "https://api.chatwork.com/v1"
    private let messageFormat :String = "/rooms/%@/messages"
    
    func sendMessage(message :String)
    {
        let base :NSURL = NSURL(string: baseUrl)!
        let path :String = String(format: messageFormat, arguments: [roomId])
        let requestUrl :NSURL = base.URLByAppendingPathComponent(path)
        
        var request = NSMutableURLRequest(URL: requestUrl)
        request.addValue("application/x-www-form-urlencoded", forHTTPHeaderField: "Content-Type")
        request.addValue(userToken, forHTTPHeaderField: "X-ChatWorkToken")
        request.HTTPMethod = "POST"
        request.HTTPBody = "body=\(message)".dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: true)
        
        var task = NSURLSession.sharedSession().dataTaskWithRequest(request, completionHandler: {data, response, error in
            if (error == nil) {
                var result = NSString(data: data, encoding: NSUTF8StringEncoding)!
                println(result)
            } else {
                println(error)
            }
        })
        task.resume()
    }
}
